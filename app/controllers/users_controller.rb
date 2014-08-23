class UsersController < ApplicationController

  def show
  	if User.find(params[:id]) == current_user || current_user.admin?
  		@user = User.find(params[:id])
  		@scores = @user.scores
  	else
  		redirect_to root_path
  	end	
  end
end
