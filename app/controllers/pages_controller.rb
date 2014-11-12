class PagesController < ApplicationController
  def home
  end

  def about
  end

  def students
  	if user_signed_in? && current_user.admin? 
  		@users = User.all
  	else
  		redirect_to root_path
  	end		
  end	 
  
  def admin
    if user_signed_in? && current_user.admin?
      @users = User.all
    else
      redirect_to root_path
    end   
  end

  def guide
    @chapters = Chapter.order('chOrder asc')
  end  
    
end
