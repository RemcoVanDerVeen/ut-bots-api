class VoicePacksController < ApplicationController
  before_action :set_voice_pack, only: %i[ show edit update destroy ]

  # GET /voice_packs or /voice_packs.json
  def index
    @voice_packs = VoicePack.all
  end

  # GET /voice_packs/1 or /voice_packs/1.json
  def show
  end

  # GET /voice_packs/new
  def new
    @voice_pack = VoicePack.new
  end

  # GET /voice_packs/1/edit
  def edit
  end

  # POST /voice_packs or /voice_packs.json
  def create
    @voice_pack = VoicePack.new(voice_pack_params)

    respond_to do |format|
      if @voice_pack.save
        format.html { redirect_to voice_pack_url(@voice_pack), notice: "Voice pack was successfully created." }
        format.json { render :show, status: :created, location: @voice_pack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @voice_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voice_packs/1 or /voice_packs/1.json
  def update
    respond_to do |format|
      if @voice_pack.update(voice_pack_params)
        format.html { redirect_to voice_pack_url(@voice_pack), notice: "Voice pack was successfully updated." }
        format.json { render :show, status: :ok, location: @voice_pack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @voice_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_packs/1 or /voice_packs/1.json
  def destroy
    @voice_pack.destroy

    respond_to do |format|
      format.html { redirect_to voice_packs_url, notice: "Voice pack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_pack
      @voice_pack = VoicePack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
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
