class BotlistsController < ApplicationController
  before_action :set_botlist, only: %i[ show edit update destroy ]

  # GET /botlists or /botlists.json
  def index
    @botlists = Botlist.all
  end

  # GET /botlists/1 or /botlists/1.json
  def show
  end

  # GET /botlists/new
  def new
    @botlist = Botlist.new
  end

  # GET /botlists/1/edit
  def edit
  end

  # POST /botlists or /botlists.json
  def create
    @botlist = Botlist.new(botlist_params)

    respond_to do |format|
      if @botlist.save
        format.html { redirect_to botlist_url(@botlist), notice: "Botlist was successfully created." }
        format.json { render :show, status: :created, location: @botlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @botlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /botlists/1 or /botlists/1.json
  def update
    respond_to do |format|
      if @botlist.update(botlist_params)
        format.html { redirect_to botlist_url(@botlist), notice: "Botlist was successfully updated." }
        format.json { render :show, status: :ok, location: @botlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @botlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /botlists/1 or /botlists/1.json
  def destroy
    @botlist.destroy

    respond_to do |format|
      format.html { redirect_to botlists_url, notice: "Botlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_botlist
      @botlist = Botlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def botlist_params
      params.fetch(:botlist, {})
    end
end
