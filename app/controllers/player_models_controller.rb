class PlayerModelsController < ApplicationController
  before_action :set_player_model, only: %i[ show edit update destroy ]

  def index
    @player_models = PlayerModel.includes(:player_model_skins)
  end

  def show
  end

  def new
    @player_model = PlayerModel.new
  end

  def edit
  end

  def create
    @player_model = PlayerModel.new(player_model_params)

    respond_to do |format|
      if @player_model.save
        format.html { redirect_to player_model_url(@player_model), notice: "Player model was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @player_model.update(player_model_params)
        format.html { redirect_to player_model_url(@player_model), notice: "Player model was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @player_model.destroy

    respond_to do |format|
      format.html { redirect_to player_models_url, notice: "Player model was successfully destroyed." }
    end
  end

  private

  def set_player_model
    @player_model = PlayerModel.find(params[:id])
  end

  def player_model_params
    params.require(:player_model).permit(:name, :description, :ut_value, :vanilla)
  end
end
