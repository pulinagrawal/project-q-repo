class ProfilesController < ApplicationController
    wrap_parameters include: Profile.attribute_names + [:password]
    before_action :correct_user, only: [:show, :edit, :update]
    
    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(params.require(:profile).permit(:first_name, :last_name, :birthday, :password, :password_confirmation, :email, :reward_amount))        
        @profile.reward_amount = 0
        if @profile.save
            sign_in @profile
            flash[:success] = "Welcome to the Sample App!"
            # logger.debug(Rails.application.config.action_mailer.smtp_settings)
            begin
                UserMailer.welcome_email(@profile).deliver_later!
            rescue
            end        
            redirect_to profile_url(@profile)
        else
            redirect_to root_url
        end
    end

    def show
        if (params[:id]).to_i <= Profile.last.id
            @profile = Profile.find(params[:id])
        else
            redirect_to root_url
        end
    end

    def my
	@profile = current_profile
    end

    def edit
        @profile = Profile.find(params[:id])
    end

    def update
        @profile = Profile.find(params[:id])

        if @profile.update(params.require(:profile).permit(:first_name, :last_name, :birthday, :password, :email))
            redirect_to profile_url(@profile)
        else
            redirect_to new_profile_url
        end
    end

    def user_params
        params.require(:profile).permit(:first_name, :last_name, :birthday, :password,:password_confirmation, :email)
    end

    #Before action
    
    def correct_user
        if (params[:id]).to_i <= Profile.last.id
            @profile= Profile.find(params[:id])
        end
        redirect_to(root_url) unless current_profile==@profile
    end



end
