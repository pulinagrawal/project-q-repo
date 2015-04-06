#TODO: move this functionality to the model
module QuizMock
    def current_question_num
        return 1
    end
    def current_question
        return "Need question impl"
    end
end

class QuizzesController < ApplicationController
    def show
        @quiz = Quiz.find(params[:id])
        @quiz.extend(QuizMock) #TODO: remove when QuizMock func refactored
    end
    
    def answer
        @quiz = Quiz.find(params[:id])
        @quiz.extend(QuizMock) #TODO: remove when QuizMock func refactored
        
        #TODO: set correct answer
        
        redirect_to get
    end
end
