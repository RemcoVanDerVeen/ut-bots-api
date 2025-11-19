class VoicePacksController < ApplicationController
  before_action :set_voice_pack, only: %i[ show edit update destroy ]

  def index
    @voice_packs = VoicePack.all
  end

  def show
  end

  def new
    @voice_pack = VoicePack.new
  end

  def edit
  end

  def create
    @voice_pack = VoicePack.new(voice_pack_params)

    respond_to do |format|
      if @voice_pack.save
        format.html { redirect_to voice_pack_url(@voice_pack), notice: "Voice pack was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @voice_pack.update(voice_pack_params)
        format.html { redirect_to voice_pack_url(@voice_pack), notice: "Voice pack was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @voice_pack.destroy

    respond_to do |format|
      format.html { redirect_to voice_packs_url, notice: "Voice pack was successfully destroyed." }
    end
  end

  private

  def set_voice_pack
    @voice_pack = VoicePack.find(params[:id])
  end

  def voice_pack_params
    params.require(:voice_pack).permit(
      :name,
      :description,
      :has_all_sounds,
      :vanilla,
      :ut_value,
      { player_model_ids: [] }
    )
  end
end
