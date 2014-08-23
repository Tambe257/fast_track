class ScoresController < ApplicationController
	
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
      @score = Score.new(params[:score])
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
  	@score = Score.find(params[:id])

    respond_to do |format|
      if @score.update(params[:score])
        format.html { redirect_to @score.user, notice: 'Score was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @score }
      else
        format.html { render action: 'edit' }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end
  	
  def edit
  	@score = Score.find(params[:id])
  end

  def destroy
    @score = Score.find(params[:id])
    if @score.present?
      @score.destroy
    end
    redirect_to @score.user
  end  

end
