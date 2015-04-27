class StatsController < ApplicationController
    before_action :correct_user, only: [:show]

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
            cat_counts[cat.category_name] = 0
        end

        age_stats = {}
        @AGE_GROUPS.keys.each do |grp|
            age_stats[grp] = 0
            cat_names.values.each do |cat|
                age_stats[cat] = 0
            end
        end

        total_count = 0

        @quizzes.each do |quiz|
            cat = cat_names[Question.find(quiz.question1).category_id]

            birthday = Profile.find(quiz.profile_id).birthday
            age = ((DateTime.now - birthday) / 365.25).floor
            if age < 0
                age = 0
            end

            age_group = @AGE_CLASSIFIER[age]

            total_count += 1
            cat_counts[cat] += 1
            age_stats[age_group] += 1
            age_stats[cat] += 1
        end

        if total_count < 1
            total_count = 1 #no div by zero
        end
        total_count = Float(total_count) #Simply some conversions below

        # Add category stats on the fly
        @categories.each do |cat|
            #TODO: actual stats
            class << cat
                attr_accessor :quiz_percent
            end
            cat.quiz_percent = (cat_counts[cat.category_name] / total_count) * 100.0
        end

        # Setup age group stats
        @age_group_stats = {}
        age_stats.keys.each do |grp|
            stats = {
                "percent" => (age_stats[grp] / total_count) * 100.0
            }
            #TODO: age+cat breakdown
            @age_group_stats[grp] = stats
        end
    end

    def correct_user
        @profile = Profile.find(session[:profile_id])
        redirect_to(root_url) unless current_profile==@profile
    end
end
