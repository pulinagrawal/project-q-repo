class PasswordresetsController < ApplicationController
  
    def new
        @profile = Profile.new
    end

    def passwordreset
         @profile = Profile.find_by(email: params[:email])
         UserMailer.reset_email(@profile).deliver_later! if @profile               
         redirect_to root_url, :notice => "Email sent with password reset instructions."
    end

      def edit
  end

  def update
    if both_passwords_blank?
      flash.now[:danger] = "Password/confirmation can't be blank"
      render 'edit'
    elsif @user.update_attributes(user_params)
      log_in @user
      flash[:success] = "Password has been reset."
      redirect_to @user
    else
      render 'edit'
    end
  end


end
