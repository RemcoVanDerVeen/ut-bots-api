class MutatorsController < ApplicationController
  before_action :set_mutator, only: %i[ show edit update destroy ]

  # GET /mutators or /mutators.json
  def index
    @mutators = Mutator.all
  end

  # GET /mutators/1 or /mutators/1.json
  def show
  end

  # GET /mutators/new
  def new
    @mutator = Mutator.new
  end

  # GET /mutators/1/edit
  def edit
  end

  # POST /mutators or /mutators.json
  def create
    @mutator = Mutator.new(mutator_params)

    respond_to do |format|
      if @mutator.save
        format.html { redirect_to mutator_url(@mutator), notice: "Mutator was successfully created." }
        format.json { render :show, status: :created, location: @mutator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mutator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutators/1 or /mutators/1.json
  def update
    respond_to do |format|
      if @mutator.update(mutator_params)
        format.html { redirect_to mutator_url(@mutator), notice: "Mutator was successfully updated." }
        format.json { render :show, status: :ok, location: @mutator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mutator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutators/1 or /mutators/1.json
  def destroy
    @mutator.destroy

    respond_to do |format|
      format.html { redirect_to mutators_url, notice: "Mutator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutator
      @mutator = Mutator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mutator_params
      params.require(:mutator).permit(:name, :description)
    end
end
