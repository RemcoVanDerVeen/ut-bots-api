class CombatStylesController < ApplicationController
  before_action :set_combat_style, only: %i[ show edit update destroy ]

  # GET /combat_styles or /combat_styles.json
  def index
    @combat_styles = CombatStyle.all
  end

  # GET /combat_styles/1 or /combat_styles/1.json
  def show
  end

  # GET /combat_styles/new
  def new
    @combat_style = CombatStyle.new
  end

  # GET /combat_styles/1/edit
  def edit
  end

  # POST /combat_styles or /combat_styles.json
  def create
    @combat_style = CombatStyle.new(combat_style_params)

    respond_to do |format|
      if @combat_style.save
        format.html { redirect_to combat_style_url(@combat_style), notice: "Combat style was successfully created." }
        format.json { render :show, status: :created, location: @combat_style }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @combat_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combat_styles/1 or /combat_styles/1.json
  def update
    respond_to do |format|
      if @combat_style.update(combat_style_params)
        format.html { redirect_to combat_style_url(@combat_style), notice: "Combat style was successfully updated." }
        format.json { render :show, status: :ok, location: @combat_style }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @combat_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combat_styles/1 or /combat_styles/1.json
  def destroy
    @combat_style.destroy

    respond_to do |format|
      format.html { redirect_to combat_styles_url, notice: "Combat style was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combat_style
      @combat_style = CombatStyle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def combat_style_params
      params.require(:combat_style).permit(:name, :description, :ut_value)
    end
end
