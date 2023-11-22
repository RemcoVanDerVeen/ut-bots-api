class GameModesController < ApplicationController
  before_action :set_game_mode, only: %i[ show edit update destroy ]

  # GET /game_modes or /game_modes.json
  def index
    @game_modes = GameMode.all
  end

  # GET /game_modes/1 or /game_modes/1.json
  def show
  end

  # GET /game_modes/new
  def new
    @game_mode = GameMode.new
  end

  # GET /game_modes/1/edit
  def edit
  end

  # POST /game_modes or /game_modes.json
  def create
    @game_mode = GameMode.new(game_mode_params)

    respond_to do |format|
      if @game_mode.save
        format.html { redirect_to game_mode_url(@game_mode), notice: "Game mode was successfully created." }
        format.json { render :show, status: :created, location: @game_mode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_modes/1 or /game_modes/1.json
  def update
    respond_to do |format|
      if @game_mode.update(game_mode_params)
        format.html { redirect_to game_mode_url(@game_mode), notice: "Game mode was successfully updated." }
        format.json { render :show, status: :ok, location: @game_mode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_modes/1 or /game_modes/1.json
  def destroy
    @game_mode.destroy

    respond_to do |format|
      format.html { redirect_to game_modes_url, notice: "Game mode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_mode
      @game_mode = GameMode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_mode_params
      params.require(:game_mode)
        .permit(:name, :description, :vanilla, :ut_value)
    end
end
