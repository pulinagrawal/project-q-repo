class QuizzesController < ApplicationController
    def deduce_quiz_state
        @quiz_done = false
        @current_question_num = 1
        @current_question = nil
        
        if not @quiz.question5.nil?
            @quiz_done = true
            @current_question_num = nil
            question_index = nil
        elsif not @quiz.question4.nil?
            @current_question_num = 5
            question_index = @quiz.question5
        elsif not @quiz.question3.nil?
            @current_question_num = 4
            question_index = @quiz.question4
        elsif not @quiz.question2.nil?
            @current_question_num = 3
            question_index = @quiz.question3
        elsif not @quiz.question1.nil?
            @current_question_num = 2
            question_index = @quiz.question2
        else
            @current_question_num = 1
            question_index = @quiz.question1
        end
        
        if not question_index.nil?
            @current_question = Question.find(question_index)
        end
    end

    def show
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state
        
        #TODO: what if quiz done?
    end
    
    def answer
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state
        
        #TODO: set correct answer
        
        redirect_to action: "show", id: params[:id]
    end
end
