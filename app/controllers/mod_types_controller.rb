class ModTypesController < ApplicationController
  before_action :set_mod_type, only: %i[ show edit update destroy ]

  # GET /mod_types or /mod_types.json
  def index
    @mod_types = ModType.all
  end

  # GET /mod_types/1 or /mod_types/1.json
  def show
  end

  # GET /mod_types/new
  def new
    @mod_type = ModType.new
  end

  # GET /mod_types/1/edit
  def edit
  end

  # POST /mod_types or /mod_types.json
  def create
    @mod_type = ModType.new(mod_type_params)

    respond_to do |format|
      if @mod_type.save
        format.html { redirect_to mod_type_url(@mod_type), notice: "Mod type was successfully created." }
        format.json { render :show, status: :created, location: @mod_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mod_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mod_types/1 or /mod_types/1.json
  def update
    respond_to do |format|
      if @mod_type.update(mod_type_params)
        format.html { redirect_to mod_type_url(@mod_type), notice: "Mod type was successfully updated." }
        format.json { render :show, status: :ok, location: @mod_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mod_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mod_types/1 or /mod_types/1.json
  def destroy
    @mod_type.destroy

    respond_to do |format|
      format.html { redirect_to mod_types_url, notice: "Mod type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mod_type
      @mod_type = ModType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mod_type_params
      params.require(:mod_type).permit(:name)
    end
end
