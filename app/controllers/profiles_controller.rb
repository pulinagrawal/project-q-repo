class ProfilesController < ApplicationController
wrap_parameters include: Profile.attribute_names + [:password]

	def new 
     @profile = Profile.new
	end 

	def create 

    

       @profile = Profile.new(params.require(:profile).permit(:first_name, :last_name, :birthday, :password,:password_confirmation, :email))
      
    
       if @profile.save
        sign_in @profile
        flash[:success] = "Welcome to the Sample App!"
       	redirect_to profile_url(@profile)
       else 
       	redirect_to category_path
       end 
	end 

  def show 
   @profile = Profile.find(params[:id])
  end 

  def edit

  @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
 if   @profile.update(params.require(:profile).permit(:first_name, :last_name, :birthday, :password, :email))
    redirect_to profile_url(@profile)
 else 
    redirect_to new_profile_url
 end 
  end 



  def user_params
    params.require(:profile).permit(:first_name, :last_name, :birthday, :password,:password_confirmation, :email)
      
    end
end
