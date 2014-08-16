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
    @score = current_user.scores.new(params[:score])

    respond_to do |format|
      if @score.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
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
        format.html { redirect_to @score, notice: 'Score was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @score }
      else
        format.html { render action: 'edit' }
        format.json { render json: @score.errors, status: :unprocessable_entity }
      end
    end
  end
  	
  def destroy
    @score.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
end
