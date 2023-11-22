class BotlistBotsController < ApplicationController
  before_action :set_botlist_bot, only: %i[ show edit update destroy ]

  # GET /botlist_bots or /botlist_bots.json
  def index
    @botlist_bots = BotlistBot.all
  end

  # GET /botlist_bots/1 or /botlist_bots/1.json
  def show
  end

  # GET /botlist_bots/new
  def new
    @botlist_bot = BotlistBot.new
  end

  # GET /botlist_bots/1/edit
  def edit
  end

  # POST /botlist_bots or /botlist_bots.json
  def create
    @botlist_bot = BotlistBot.new(botlist_bot_params)

    respond_to do |format|
      if @botlist_bot.save
        format.html { redirect_to botlist_bot_url(@botlist_bot), notice: "Botlist bot was successfully created." }
        format.json { render :show, status: :created, location: @botlist_bot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @botlist_bot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /botlist_bots/1 or /botlist_bots/1.json
  def update
    respond_to do |format|
      if @botlist_bot.update(botlist_bot_params)
        format.html { redirect_to botlist_bot_url(@botlist_bot), notice: "Botlist bot was successfully updated." }
        format.json { render :show, status: :ok, location: @botlist_bot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @botlist_bot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /botlist_bots/1 or /botlist_bots/1.json
  def destroy
    @botlist_bot.destroy

    respond_to do |format|
      format.html { redirect_to botlist_bots_url, notice: "Botlist bot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_botlist_bot
      @botlist_bot = BotlistBot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def botlist_bot_params
      params.fetch(:botlist_bot, {})
    end
end
