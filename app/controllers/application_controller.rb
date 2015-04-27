class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    #rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    include SessionsHelper

    # Force signout to prevent CSRF attacks
    def handle_unverified_request
        sign_out
        super
    end

    def user_is_logged_in?
        !!session[:profile_id]
    end

    def quizzes_index_requirements
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
end
