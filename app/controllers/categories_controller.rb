class RecommendedLevel
    attr_accessor :levels

    def initialize
        @levels = [OneStat.new, OneStat.new, OneStat.new]
    end

    def add_quiz(quiz)
        (1..5).each do |idx|
            correct = quiz["correct#{idx}"]
            if not correct.nil?
                question = Question.find(quiz["question#{idx}"])
                #Note our array is 0-based, but our levels are 1-based
                @levels[question.level - 1].hit(1, 1, correct ? 1: 0)
            end
        end
    end

    def level
        # Threshold for recommendation is currently 80% correct overall
        level = 1

        (0..2).each do |idx|
            if @levels[idx].percent_correct > 80.0
                level = idx + 2 #off by 1 PLUS use the next level
            end
        end

        if level > 3
            return 3
        else
            return level
        end
    end
end

class CategoriesController < ApplicationController

    def show
        quizzes_index_requirements

        #Note that quizzes_index_requirements will get everything for us -
        #we just do something special with @categories on search
        if params[:search]
            @categories = Category.search(params[:search]).order("created_at DESC")
        end

        #Update categories with a recommendation class
        @categories.each do |cat|
            class << cat
                attr_accessor :recommend
            end
            cat.recommend = RecommendedLevel.new
        end

        @categories.each do |cat|
            @quizzes.each do |quiz|
                if cat.id == Question.find(quiz.question1).category_id
                    cat.recommend.add_quiz(quiz)
                end
            end
        end
    end
end
