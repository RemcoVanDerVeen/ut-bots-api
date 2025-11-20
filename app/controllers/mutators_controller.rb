class MutatorsController < ApplicationController
  before_action :set_mutator, only: %i[ show edit update destroy ]

  def index
    @mutators = Mutator.all
  end

  def show
  end

  def new
    @mutator = Mutator.new
  end

  def edit
  end

  def create
    @mutator = Mutator.new(mutator_params)

    respond_to do |format|
      if @mutator.save
        format.html { redirect_to mutator_url(@mutator), notice: "Mutator was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mutator.update(mutator_params)
        format.html { redirect_to mutator_url(@mutator), notice: "Mutator was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mutator.destroy

    respond_to do |format|
      format.html { redirect_to mutators_url, notice: "Mutator was successfully destroyed." }
    end
  end

  private

  def set_mutator
    @mutator = Mutator.find(params[:id])
  end

  def mutator_params
    params.require(:mutator).permit(:name, :description)
  end
end
