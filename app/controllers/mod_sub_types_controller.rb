class ModSubTypesController < ApplicationController
  before_action :set_mod_sub_type, only: %i[ show edit update destroy ]

  # GET /mod_sub_types or /mod_sub_types.json
  def index
    @mod_sub_types = ModSubType.all
  end

  # GET /mod_sub_types/1 or /mod_sub_types/1.json
  def show
  end

  # GET /mod_sub_types/new
  def new
    @mod_sub_type = ModSubType.new
  end

  # GET /mod_sub_types/1/edit
  def edit
  end

  # POST /mod_sub_types or /mod_sub_types.json
  def create
    @mod_sub_type = ModSubType.new(mod_sub_type_params)

    respond_to do |format|
      if @mod_sub_type.save
        format.html { redirect_to mod_sub_type_url(@mod_sub_type), notice: "Mod sub type was successfully created." }
        format.json { render :show, status: :created, location: @mod_sub_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mod_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mod_sub_types/1 or /mod_sub_types/1.json
  def update
    respond_to do |format|
      if @mod_sub_type.update(mod_sub_type_params)
        format.html { redirect_to mod_sub_type_url(@mod_sub_type), notice: "Mod sub type was successfully updated." }
        format.json { render :show, status: :ok, location: @mod_sub_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mod_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mod_sub_types/1 or /mod_sub_types/1.json
  def destroy
    @mod_sub_type.destroy

    respond_to do |format|
      format.html { redirect_to mod_sub_types_url, notice: "Mod sub type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mod_sub_type
      @mod_sub_type = ModSubType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mod_sub_type_params
      params.require(:mod_sub_type).permit(:name)
    end
end
