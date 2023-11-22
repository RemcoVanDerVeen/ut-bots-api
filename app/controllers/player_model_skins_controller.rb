class PlayerModelSkinsController < ApplicationController
  before_action :set_player_model_skin, only: %i[ show edit update destroy ]

  # GET /player_model_skins or /player_model_skins.json
  def index
    @player_model_skins = PlayerModelSkin.all
  end

  # GET /player_model_skins/1 or /player_model_skins/1.json
  def show
  end

  # GET /player_model_skins/new
  def new
    @player_model_skin = PlayerModelSkin.new
  end

  # GET /player_model_skins/1/edit
  def edit
  end

  # POST /player_model_skins or /player_model_skins.json
  def create
    @player_model_skin = PlayerModelSkin.new(player_model_skin_params)

    respond_to do |format|
      if @player_model_skin.save
        format.html { redirect_to player_model_skin_url(@player_model_skin), notice: "Player model skin was successfully created." }
        format.json { render :show, status: :created, location: @player_model_skin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player_model_skin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_model_skins/1 or /player_model_skins/1.json
  def update
    respond_to do |format|
      if @player_model_skin.update(player_model_skin_params)
        format.html { redirect_to player_model_skin_url(@player_model_skin), notice: "Player model skin was successfully updated." }
        format.json { render :show, status: :ok, location: @player_model_skin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player_model_skin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_model_skins/1 or /player_model_skins/1.json
  def destroy
    @player_model_skin.destroy

    respond_to do |format|
      format.html { redirect_to player_model_skins_url, notice: "Player model skin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_model_skin
      @player_model_skin = PlayerModelSkin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_model_skin_params
      params.fetch(:player_model_skin, {})
    end
end
