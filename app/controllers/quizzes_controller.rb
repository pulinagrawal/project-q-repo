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

	
	def create_quiz(request_category,request_level,requesting_user)
		#num_questions=Question.where(category: category).last.id
		#Question.where(id: [(1..num_questions].sample(5))
	 	questions=Question.where(category: request_category, level: request_level).take(5)
		@nwquiz.question1=questions[0];
		@nwquiz.question2=questions[1];
		@nwquiz.question3=questions[2];
		@nwquiz.question4=questions[3];
		@nwquiz.question5=questions[4];

	#	return Quiz.create({
	#	user: requesting_user,
	#	start_date: Date.current,
	#	question1: questions[1],
	#	question2: questions[2],
	#	question3: questions[3],
	#	question4: questions[4],
	#	question5: questions[5]	
	#	})	
	end

	def new 
	 	@questions=Question.where(category_id:params[:category], level: Integer(params[:level])).take(5)
	
		#need to change Profile.find with profile in session
		@nwquiz=Quiz.create(profile_id: Profile.find(1).id,
				 start_date: Date.current,
				 question1: @questions[0].id,
				 question2: @questions[1].id,
				 question3: @questions[2].id,
				 question4: @questions[3].id,
				 question5: @questions[4].id
				)
		redirect_to quiz_url(@nwquiz.id)
	end

	def index
		@profile=Profile.find(1)		
		@quizzes=Quiz.where(profile_id: @profile.id)
		@categories=Category.all
		@done=Array.new(@categories.count,0)
		@quizzes.each { |q|
			@nq=Question.find(q.question1)	
			@done[@nq.category_id-1]=@done[@nq.category_id-1]+1
		}
	end

end
