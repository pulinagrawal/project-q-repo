class PasswordresetsController < ApplicationController
    before_action :get_profile,   only: [:edit, :update]

    def new
        @profile = Profile.new
    end

    def get_profile
        @profile = Profile.find_by(email: params[:email])
    end

    def passwordreset
        @profile = Profile.find_by(email: params[:email])
        UserMailer.reset_email(@profile).deliver_later! if @profile
        sign_out
        redirect_to root_url, :notice => "Email sent with password reset instructions."
    end

    def edit
        @profile = Profile.find_by(remember_token: params[:token])
    end

    def update
        @profile = Profile.find_by(remember_token: params[:token])
        if passwords_blank?
            flash.now[:danger] = "Password/confirmation can't be blank"
            render 'edit'
        elsif passwords_mismatch?
            flash.now[:danger] = "Password/confirmation can't be blank"
            render 'edit'
        elsif @profile.update_attributes(user_params)
            sign_out
            @profile.save!
            sign_in @profile
            flash[:success] = "Password has been reset."
            redirect_to @profile
        else
            render 'edit'
        end
    end

    def user_params
        params.require(:profile).permit(:password,:password_confirmation)
    end

    def passwords_blank?
        p = user_params
        p[:password].blank?
    end

    def passwords_mismatch?
        p = user_params
        p[:password] != p[:password_confirmation]
    end
end
