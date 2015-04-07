class QuizzesController < ApplicationController
    def deduce_quiz_state
        #todo: reference @quiz
        @current_question_num = 1
        @current_question = "Need question impl"
    end

    def show
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state
    end
    
    def answer
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state
        
        #TODO: set correct answer
        
        redirect_to get
    end
end
