class UsersController < ApplicationController

  def show
  	if User.find(params[:id]) == current_user || current_user.admin?
  		@user = User.find(params[:id])
  		@scores = @user.scores
  		@score_act = @scores.where(:name => 'ACT')
  		@score_sat = @scores.where(:name => 'SAT')
  		@score_psat = @scores.where(:name => 'PSAT')
      @sittings = @user.sittings
  	else
  		redirect_to root_path
  	end	
  end
end
