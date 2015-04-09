class QuizzesController < ApplicationController
    def deduce_quiz_state
        #Set our defaults
        @quiz_done = false
        @current_question_num = 1
        @current_question = nil
        
        question_index = nil
        
        if not @quiz.correct5.blank?
            #All questions answered
            @quiz_done = true
            @current_question_num = nil
        else
            #Find where they are at
            4.downto(1).each { |idx|
                if not @quiz["correct#{idx}"].blank?
                    @current_question_num = idx + 1
                    question_index = @quiz["question#{idx + 1}"]
                    break # found our question, so we're all done
                end
            }
            
            if question_index.nil?
                #Nothing selected - must be at question 1
                @current_question_num = 1
                question_index = @quiz.question1
            end
        end
        
        logger.debug "Quiz #{@quiz.id} Deduction: Done? #{@quiz_done}, Num:#{@current_question_num}, Q:#{@current_question}"
        
        if not question_index.nil?
            @current_question = Question.find(question_index)
        end
    end

    def show
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state
        
        if @quiz_done
            # Quiz is completed: redirect to results
            redirect_to action: "results", id: params[:id]
            return
        end        
    end
    
    def answer
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state
        
        #TODO: set correct answer
        
        redirect_to action: "show", id: params[:id]
    end

		def createQuiz(category,level)
				@quiz=Quiz.create()	
		end

end
