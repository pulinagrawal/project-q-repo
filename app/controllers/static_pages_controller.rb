class StaticPagesController < ApplicationController
    def landing
    quizzes_index_requirements

    @quiz = Quiz.all
#    @categories=Category.all
        
    @num_of_correct_answers = 0
    @done_new=Array.new(@categories.count,0)        
    @done_count=Array.new(@categories.count,0)  
    @quiz.each do |q|
        @category_id=Question.find(q.question1).category_id        
        correct = 0
                if q.profile_id == current_profile.id
                (1..5).each do |idx|
                    if q["correct#{idx}"]
                      correct += 1
                    end
                end
            end        
    @num_of_correct_answers += correct
    @done_new[@category_id-1]=@num_of_correct_answers
    @done_count[@category_id-1]=@done_count[@category_id-1]+1
    end
    
    @reward_amount = Profile.find(current_profile.id).reward_amount
    @title = ""
    if (@reward_amount >= 0 && @reward_amount < 20)
        @title = "QBEGINNER"
    elsif (@reward_amount >= 20 && @reward_amount < 50)
            @title = "QINTERMEDIATE"
        elsif (@reward_amount >= 50 && @reward_amount < 80)
                @title = "QSTAR"
             elsif (@reward_amount >= 80)
                    @title = "QSUPERSTAR"       
    end


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
