class ScoresController < ApplicationController
	before_action :set_score, only: [:show, :edit, :update, :destroy]

  def index
  	@scores = Score.all
  end

  def show
    @score = Score.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @score }
      format.js
    end
  end  

	def new
  	@score = Score.new
  end

	def create
    #@score = current_user.scores.new(params[:score])
    #@user = current_user
    if current_user.admin?
      @score = Score.new(score_params)
    elsif current_user.id != @score.user_id
      @score.errors.add(:user_id, "You're not allowed to create scores for other users")
    end  

    respond_to do |format|
      if @score.save
        format.html { redirect_to @score.user, notice: 'Score was successfully created.' }
        format.json { render json: @score, status: :created, location: @score }
      else
        format.html { render action: 'new' }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end
  	
  def update

    respond_to do |format|
      if @score.update(score_params)
        format.html { redirect_to @score.user, notice: 'Score was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @score }
      else
        format.html { render action: 'edit' }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end
  	
  def edit
  	
  end

  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to score_url }
      format.json { head :no_content }
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = Score.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_params
      params.require(:score).permit(:name, :test_type, :month, :year, :math, :reading, :writing, :essay, :science, :english, :comment, :day, :taken_date, :user_id)
    end
end
