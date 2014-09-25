class TriggersController < ApplicationController
  before_action :set_trigger, only: [:show, :edit, :update, :destroy]

  def index
    @triggers = Trigger.all
  end

  def show
  end

  def new
    @trigger = Trigger.new
  end

  def edit
  end

  def create
    @trigger = Trigger.new(params[:trigger])

    respond_to do |format|
      if @trigger.save
        format.html { redirect_to @trigger, notice: 'Trigger was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trigger }
      else
        format.html { render action: 'new' }
        format.json { render json: @trigger.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @trigger.update(params[:trigger])
        format.html { redirect_to @trigger, notice: 'Trigger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trigger.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trigger.destroy
    respond_to do |format|
      format.html { redirect_to trigger_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trigger
      @trigger = Trigger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trigger_params
      params.require(:trigger).permit(:body, :explanation, :rule_id)
    end
end
