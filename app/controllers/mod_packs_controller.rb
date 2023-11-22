class ModPacksController < ApplicationController
  before_action :set_mod_pack, only: %i[ show edit update destroy ]

  # GET /mod_packs or /mod_packs.json
  def index
    @mod_packs = ModPack.all
  end

  # GET /mod_packs/1 or /mod_packs/1.json
  def show
  end

  # GET /mod_packs/new
  def new
    @mod_pack = ModPack.new
  end

  # GET /mod_packs/1/edit
  def edit
  end

  # POST /mod_packs or /mod_packs.json
  def create
    @mod_pack = ModPack.new(mod_pack_params)

    respond_to do |format|
      if @mod_pack.save
        format.html { redirect_to mod_pack_url(@mod_pack), notice: "Mod pack was successfully created." }
        format.json { render :show, status: :created, location: @mod_pack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mod_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mod_packs/1 or /mod_packs/1.json
  def update
    respond_to do |format|
      if @mod_pack.update(mod_pack_params)
        format.html { redirect_to mod_pack_url(@mod_pack), notice: "Mod pack was successfully updated." }
        format.json { render :show, status: :ok, location: @mod_pack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mod_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mod_packs/1 or /mod_packs/1.json
  def destroy
    @mod_pack.destroy

    respond_to do |format|
      format.html { redirect_to mod_packs_url, notice: "Mod pack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mod_pack
      @mod_pack = ModPack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mod_pack_params
      params.require(:mod_pack).permit(:name)
    end
end
