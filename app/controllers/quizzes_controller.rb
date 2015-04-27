class QuizzesController < ApplicationController
    before_action :correct_user, only: [:show, :edit, :update]
    def deduce_quiz_state
        #Set our defaults
        @quiz_done = false
        @current_question_num = 1
        @current_question = nil

        question_index = nil

        logger.debug @quiz.as_json

        if not @quiz.correct5.nil?
            #All questions answered
            @quiz_done = true
            @current_question_num = nil
        else
            #Find where they are at
            4.downto(1).each { |idx|
                if not @quiz["correct#{idx}"].nil?
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

    def quiz_score
        count = 0
        score = 0
        points = 1
        1.upto(5).each do |idx|
            if @quiz["correct#{idx}"]
                score += points
                points *= 2
            end
        end
        return score
    end

    def show
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state

        if @quiz_done
            # Quiz is completed: redirect to results
            session[:last_answer] = ""
            redirect_to action: "result", id: params[:id]
            return
        end

        if session[:last_answer].blank? or @current_question_num < 2
            @last_answer = ""
        else
            @last_answer = session[:last_answer]
        end
        session[:last_answer] = ""

        # Remove any unintentional dups and use a random order
        @answers = [
            @current_question.correct_answer,
            @current_question.option1,
            @current_question.option2,
            @current_question.option3,
            @current_question.option4
        ].uniq.shuffle
    end

    def answer
        session[:last_answer] = ""

        @quiz = Quiz.find(params[:id])
        deduce_quiz_state

        correct = params[:answer] == @current_question.correct_answer

        if correct
            session[:last_answer] = "You got question #{@current_question_num} Correct!"
            correct = true
        else
            session[:last_answer] = "Sorry - you got question #{@current_question_num} wrong"
            correct = false
        end

        #Update quiz with results
        @quiz["correct#{@current_question_num}"] = correct
        @quiz.save

        # If we just finished, score and record what just happenend... otherwise
        # we just redirect to diplay the quiz so the next question can be
        # displayed
        if @current_question_num == 5
            #Just finished quiz - we need to calculate the score
            qs = quiz_score
            logger.debug "User #{@quiz.profile_id} score is inc'ed by #{qs}"

            user = Profile.find(@quiz.profile_id)
            if user.reward_amount.blank?
                user.reward_amount = 0
            end
            user.reward_amount += qs
            user.save!
            logger.debug user.to_json

            redirect_to action: "result", id: params[:id]
        else
            redirect_to action: "show", id: params[:id]
        end
    end

    def new
        @questions=Question.where(category_id:params[:category], level: Integer(params[:level])).take(5)

        #need to change Profile.find with profile in session
        @nwquiz=Quiz.create(profile: Profile.find(current_profile.id),
                 start_date: Date.current,
                 question1: @questions[0].id,
                 question2: @questions[1].id,
                 question3: @questions[2].id,
                 question4: @questions[3].id,
                 question5: @questions[4].id
                )
        redirect_to quiz_url(@nwquiz.id)
    end

    def result
        session[:last_answer] = ""
        @quiz = Quiz.find(params[:id])
        deduce_quiz_state

        if not @quiz_done
            # Whoops - they aren't done yet
            redirect_to action: "show", id: params[:id]
            return
        end

        @quiz_score = quiz_score
    end

    def destroy
        @quiz = Quiz.find(params[:id])
        @quiz.destroy
        respond_to do |format|
            format.html { redirect_to category_url }
        end
    end


    def index
        @profile=current_profile
        @quizzes=Quiz.where(profile_id: @profile.id)
        @categories=Category.all
        @done=Array.new(@categories.count,0)
        @quizzes.each { |q|
            @nq=Question.find(q.question1)
            @done[@nq.category_id-1]=@done[@nq.category_id-1]+1
        }

        startd = @profile.birthday + -365
        endd = @profile.birthday + 365
        peer_total = 0.0
        peer_correct = 0.0
        Profile.where("birthday between ? and ?", startd, endd).each do |peer|
            Quiz.where(profile_id: peer.id).each do |pq|
                peer_total += 5.0
                1.upto(5).each do |idx|
                    if pq["correct#{idx}"] then
                        peer_correct += 1.0
                    end
                end
            end
        end
        if peer_total > 0.0
            @peer_percent = peer_correct / peer_total
        else
            @peer_percent = 0
        end
    end

    #Before action
    
    def correct_user
        @profile=Profile.find(Quiz.find(params[:id]).profile_id)
        redirect_to(root_url) unless current_profile==@profile
    end

end
