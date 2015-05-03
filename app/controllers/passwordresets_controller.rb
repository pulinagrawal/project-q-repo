class PasswordresetsController < ApplicationController
  
    def new
        @user = Profile.new
    end

    def passwordreset
         user = Profile.find_by(email: params[:email])         
         redirect_to root_url, :notice => "Email sent with password reset instructions."
    end

end
