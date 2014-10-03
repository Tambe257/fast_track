class PagesController < ApplicationController
  def home
  end

  def about
  end

  def students
  	if current_user.admin?
  		@users = User.all
  	else
  		redirect_to root_path
  	end		
  end	 
  
  def admin
  end

  def guide
    @chapters = Chapter.all
  end  
    
end
