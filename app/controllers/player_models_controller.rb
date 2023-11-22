class PlayerModelsController < ApplicationController
  before_action :set_player_model, only: %i[ show edit update destroy ]

  # GET /player_models or /player_models.json
  def index
    @player_models = PlayerModel.all
  end

  # GET /player_models/1 or /player_models/1.json
  def show
  end

  # GET /player_models/new
  def new
    @player_model = PlayerModel.new
  end

  # GET /player_models/1/edit
  def edit
  end

  # POST /player_models or /player_models.json
  def create
    @player_model = PlayerModel.new(player_model_params)

    respond_to do |format|
      if @player_model.save
        format.html { redirect_to player_model_url(@player_model), notice: "Player model was successfully created." }
        format.json { render :show, status: :created, location: @player_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_models/1 or /player_models/1.json
  def update
    respond_to do |format|
      if @player_model.update(player_model_params)
        format.html { redirect_to player_model_url(@player_model), notice: "Player model was successfully updated." }
        format.json { render :show, status: :ok, location: @player_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_models/1 or /player_models/1.json
  def destroy
    @player_model.destroy

    respond_to do |format|
      format.html { redirect_to player_models_url, notice: "Player model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_model
      @player_model = PlayerModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_model_params
      params.fetch(:player_model, {})
    end
end
