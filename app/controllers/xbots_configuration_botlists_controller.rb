class XbotsConfigurationBotlistsController < ApplicationController
  before_action :set_xbots_configuration_botlist, only: %i[ show edit update destroy ]

  # GET /xbots_configuration_botlists or /xbots_configuration_botlists.json
  def index
    @xbots_configuration_botlists = XbotsConfigurationBotlist.all
  end

  # GET /xbots_configuration_botlists/1 or /xbots_configuration_botlists/1.json
  def show
  end

  # GET /xbots_configuration_botlists/new
  def new
    @xbots_configuration_botlist = XbotsConfigurationBotlist.new
  end

  # GET /xbots_configuration_botlists/1/edit
  def edit
  end

  # POST /xbots_configuration_botlists or /xbots_configuration_botlists.json
  def create
    @xbots_configuration_botlist = XbotsConfigurationBotlist.new(xbots_configuration_botlist_params)

    respond_to do |format|
      if @xbots_configuration_botlist.save
        format.html { redirect_to xbots_configuration_botlist_url(@xbots_configuration_botlist), notice: "Xbots configuration botlist was successfully created." }
        format.json { render :show, status: :created, location: @xbots_configuration_botlist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xbots_configuration_botlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xbots_configuration_botlists/1 or /xbots_configuration_botlists/1.json
  def update
    respond_to do |format|
      if @xbots_configuration_botlist.update(xbots_configuration_botlist_params)
        format.html { redirect_to xbots_configuration_botlist_url(@xbots_configuration_botlist), notice: "Xbots configuration botlist was successfully updated." }
        format.json { render :show, status: :ok, location: @xbots_configuration_botlist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @xbots_configuration_botlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xbots_configuration_botlists/1 or /xbots_configuration_botlists/1.json
  def destroy
    @xbots_configuration_botlist.destroy

    respond_to do |format|
      format.html { redirect_to xbots_configuration_botlists_url, notice: "Xbots configuration botlist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xbots_configuration_botlist
      @xbots_configuration_botlist = XbotsConfigurationBotlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xbots_configuration_botlist_params
      params.fetch(:xbots_configuration_botlist, {})
    end
end
