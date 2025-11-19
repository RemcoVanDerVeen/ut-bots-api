class BotsController < ApplicationController
  before_action :set_bot, only: %i[ show edit update destroy ]

  def index
    @bots = Bot.joins(:teams, :model, :skin)
  end

  def show
  end

  def new
    @bot = Bot.new
  end

  def edit
  end

  def create
    @bot = Bot.new(bot_params)

    respond_to do |format|
      if @bot.save
        format.html { redirect_to bot_url(@bot), notice: "Bot was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bot.update(bot_params)
        format.html { redirect_to bot_url(@bot), notice: "Bot was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bot.destroy

    respond_to do |format|
      format.html { redirect_to bots_url, notice: "Bot was successfully destroyed." }
    end
  end

  private

  def set_bot
    @bot = Bot.find(params[:id])
  end

  def bot_params
    params.require(:bot).permit(:name, :has_jumpy_behaviour, :skill_adjust, :bot_accuracy,
                                  :alertness, :camping, :strafing_ability, :combat_style_id,
                                  :model_id, :skin_id, :face_id, :voice_pack_id, :colour_id,
                                  :favourite_weapon_id)
  end
end
