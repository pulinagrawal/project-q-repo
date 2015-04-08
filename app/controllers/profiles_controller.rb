class ProfilesController < ApplicationController
	def new 
     @profile = Profile.new
	end 

	def create 
       @profile = Profile.new(params.require(:profile).permit(:first_name, :last_name, :birthday, :password, :email))

       if @profile.save
       	redirect_to profile_url(@profile)
       else 
       	redirect_to new_profile_url
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
end
