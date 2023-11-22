class ModPackContentsController < ApplicationController
  before_action :set_mod_pack_content, only: %i[ show edit update destroy ]

  # GET /mod_pack_contents or /mod_pack_contents.json
  def index
    @mod_pack_contents = ModPackContent.all
  end

  # GET /mod_pack_contents/1 or /mod_pack_contents/1.json
  def show
  end

  # GET /mod_pack_contents/new
  def new
    @mod_pack_content = ModPackContent.new
  end

  # GET /mod_pack_contents/1/edit
  def edit
  end

  # POST /mod_pack_contents or /mod_pack_contents.json
  def create
    @mod_pack_content = ModPackContent.new(mod_pack_content_params)

    respond_to do |format|
      if @mod_pack_content.save
        format.html { redirect_to mod_pack_content_url(@mod_pack_content), notice: "Mod pack content was successfully created." }
        format.json { render :show, status: :created, location: @mod_pack_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mod_pack_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mod_pack_contents/1 or /mod_pack_contents/1.json
  def update
    respond_to do |format|
      if @mod_pack_content.update(mod_pack_content_params)
        format.html { redirect_to mod_pack_content_url(@mod_pack_content), notice: "Mod pack content was successfully updated." }
        format.json { render :show, status: :ok, location: @mod_pack_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mod_pack_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mod_pack_contents/1 or /mod_pack_contents/1.json
  def destroy
    @mod_pack_content.destroy

    respond_to do |format|
      format.html { redirect_to mod_pack_contents_url, notice: "Mod pack content was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mod_pack_content
      @mod_pack_content = ModPackContent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mod_pack_content_params
      params.fetch(:mod_pack_content, {})
    end
end
