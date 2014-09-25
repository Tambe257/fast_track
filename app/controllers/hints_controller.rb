class HintsController < ApplicationController
  before_action :set_hint, only: [:show, :edit, :update, :destroy]

  def index
    @hints = Hint.all
  end

  def show
  end

  def new
    @hint = Hint.new
  end

  def edit
  end

  def create
    @hint = Hint.new(params[:hint])

    respond_to do |format|
      if @hint.save
        format.html { redirect_to @hint, notice: 'Hint was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hint }
      else
        format.html { render action: 'new' }
        format.json { render json: @hint.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hint.update(params[:hint])
        format.html { redirect_to @hint, notice: 'Hint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hint.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @hint.destroy
    respond_to do |format|
      format.html { redirect_to hint_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hint
      @hint = Hint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hint_params
      params.require(:hint).permit(:body, :explanation, :rule_id)
    end
end

