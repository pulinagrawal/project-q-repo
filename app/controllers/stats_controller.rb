#Note that we use OneState from application_helper.rb

class StatsController < ApplicationController
    before_action :correct_user

    def setup_aging
        # Age groups are adapted from the developmental groups used by
        # the USA CDC for parenting tips:
        # http://www.cdc.gov/ncbddd/childdevelopment/positiveparenting/
        @AGE_GROUPS = {
            "Under 6" => (0..5).to_a,
            "6 - 11"  => (6..11).to_a,
            "12 - 14" => (12..14).to_a,
            "15 - 17" => (15..17).to_a,
            "Adults"  => (18..130).to_a,
        }

        # Not the most elegant solution, but this way we can determine age groups
        # solely by AGE_GROUPS above
        @AGE_CLASSIFIER = @AGE_GROUPS.flat_map do |grp, agerange|
            agerange.map do |age|
                [age, grp]
            end
        end.to_h
    end

    def show
        # Gets a lot of what we need
        setup_aging
        quizzes_index_requirements

        # @categories from above
        # we actually need all quizzes
        @quizzes = Quiz.all

        cat_names = {}
        cat_counts = {}
        @categories.each do |cat|
            cat_names[cat.id] = cat.category_name
            cat_counts[cat.category_name] = OneStat.new
        end

        @age_stats = {}
        @AGE_GROUPS.keys.each do |grp|
            @age_stats[grp] = OneStat.new
            cat_names.values.each do |cat|
                @age_stats[cat] = OneStat.new
            end
        end

        @total_count = 0
        total_questions = 0
        total_correct = 0

        @quizzes.each do |quiz|
            cat = cat_names[Question.find(quiz.question1).category_id]

            birthday = Profile.find(quiz.profile_id).birthday
            age = ((DateTime.now - birthday) / 365.25).floor
            if age < 0
                age = 0
            end

            age_group = @AGE_CLASSIFIER[age]

            correct = 0
            (1..5).each do |idx|
                if quiz["correct#{idx}"]
                    correct += 1
                end
            end

            @total_count += 1
            total_questions += 5
            total_correct += correct

            cat_counts[cat].hit(1, 5, correct)
            @age_stats[age_group].hit(1, 5, correct)
            @age_stats[cat].hit(1, 5, correct)
        end

        # Add category stats on the fly
        @categories.each do |cat|
            class << cat
                attr_accessor :stats
            end
            cat.stats = cat_counts[cat.category_name]
        end
    end

    def correct_user
        correct = current_profile
        @profile = Profile.find(session[:profile_id])
        redirect_to(root_url) unless correct == @profile
    end
end
