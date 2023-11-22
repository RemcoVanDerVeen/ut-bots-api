class TeamBotsController < ApplicationController
  before_action :set_team_bot, only: %i[ show edit update destroy ]

  # GET /team_bots or /team_bots.json
  def index
    @team_bots = TeamBot.all
  end

  # GET /team_bots/1 or /team_bots/1.json
  def show
  end

  # GET /team_bots/new
  def new
    @team_bot = TeamBot.new
  end

  # GET /team_bots/1/edit
  def edit
  end

  # POST /team_bots or /team_bots.json
  def create
    @team_bot = TeamBot.new(team_bot_params)

    respond_to do |format|
      if @team_bot.save
        format.html { redirect_to team_bot_url(@team_bot), notice: "Team bot was successfully created." }
        format.json { render :show, status: :created, location: @team_bot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_bot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_bots/1 or /team_bots/1.json
  def update
    respond_to do |format|
      if @team_bot.update(team_bot_params)
        format.html { redirect_to team_bot_url(@team_bot), notice: "Team bot was successfully updated." }
        format.json { render :show, status: :ok, location: @team_bot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_bot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_bots/1 or /team_bots/1.json
  def destroy
    @team_bot.destroy

    respond_to do |format|
      format.html { redirect_to team_bots_url, notice: "Team bot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_bot
      @team_bot = TeamBot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_bot_params
      params.fetch(:team_bot, {})
    end
end
