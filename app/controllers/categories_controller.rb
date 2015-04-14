class CategoriesController < ApplicationController
  
  def show 

	   if params[:search]
	     	 @category = Category.search(params[:search]).order("created_at DESC")
	    else
	  		 @category = Category.all
	   end 
  end   

end
