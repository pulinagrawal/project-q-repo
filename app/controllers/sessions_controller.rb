class SessionsController < ApplicationController

    def new
    end

    def create
        profile = Profile.find_by_email(params[:session][:email].downcase)
        if profile and profile.authenticate(params[:session][:password])
            sign_in profile
            redirect_to landing_url
        else
            logger.debug "INVALID LOGIN: #{profile} #{params[:session][:email]} entered '#{params[:session][:password]}'"
            flash.now[:danger] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def destroy        
        sign_out
        redirect_to root_url
    end
end
