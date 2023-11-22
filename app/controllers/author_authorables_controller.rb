class AuthorablesController < ApplicationController
  before_action :set_authorable, only: %i[ show edit update destroy ]

  # GET /authorables or /authorables.json
  def index
    @authorables = Authorable.all
  end

  # GET /authorables/1 or /authorables/1.json
  def show
  end

  # GET /authorables/new
  def new
    @authorable = Authorable.new
  end

  # GET /authorables/1/edit
  def edit
  end

  # POST /authorables or /authorables.json
  def create
    @authorable = Authorable.new(authorable_params)

    respond_to do |format|
      if @authorable.save
        format.html { redirect_to authorable_url(@authorable), notice: "Authorable was successfully created." }
        format.json { render :show, status: :created, location: @authorable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorables/1 or /authorables/1.json
  def update
    respond_to do |format|
      if @authorable.update(authorable_params)
        format.html { redirect_to authorable_url(@authorable), notice: "Authorable was successfully updated." }
        format.json { render :show, status: :ok, location: @authorable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorables/1 or /authorables/1.json
  def destroy
    @authorable.destroy

    respond_to do |format|
      format.html { redirect_to authorables_url, notice: "Authorable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorable
      @authorable = Authorable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorable_params
      params.fetch(:authorable, {})
    end
end
