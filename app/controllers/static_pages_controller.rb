class StaticPagesController < ApplicationController
    def landing
            quizzes_index_requirements

    @quiz = Quiz.all
    @categories=Category.all
        
    @num_of_correct_answers = 0
    @quiz.each do |q|
        @category_id=Question.find(q.question1).category_id
        @done=Array.new(@categories.count,0)        
        correct = 0
                if q.profile_id == current_profile.id
                (1..5).each do |idx|
                    if q["correct#{idx}"]
                      correct += 1
                    end
                end
            end        
    @num_of_correct_answers += correct
    @done[@category_id-1]=@num_of_correct_answers
    end
    @num_of_least_attempts = 1
    @random_selection = 1

    end

    def example
    end

    def index
            if current_profile
                landing
            else
                @profile = Profile.new
            end
    end


end
