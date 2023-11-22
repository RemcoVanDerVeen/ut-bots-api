class XbotsConfigurationsController < ApplicationController
  before_action :set_xbots_configuration, only: %i[ show edit update destroy ]

  # GET /xbots_configurations or /xbots_configurations.json
  def index
    @xbots_configurations = XbotsConfiguration.all
  end

  # GET /xbots_configurations/1 or /xbots_configurations/1.json
  def show
  end

  # GET /xbots_configurations/new
  def new
    @xbots_configuration = XbotsConfiguration.new
  end

  # GET /xbots_configurations/1/edit
  def edit
  end

  # POST /xbots_configurations or /xbots_configurations.json
  def create
    @xbots_configuration = XbotsConfiguration.new(xbots_configuration_params)

    respond_to do |format|
      if @xbots_configuration.save
        format.html { redirect_to xbots_configuration_url(@xbots_configuration), notice: "Xbots configuration was successfully created." }
        format.json { render :show, status: :created, location: @xbots_configuration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xbots_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xbots_configurations/1 or /xbots_configurations/1.json
  def update
    respond_to do |format|
      if @xbots_configuration.update(xbots_configuration_params)
        format.html { redirect_to xbots_configuration_url(@xbots_configuration), notice: "Xbots configuration was successfully updated." }
        format.json { render :show, status: :ok, location: @xbots_configuration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @xbots_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xbots_configurations/1 or /xbots_configurations/1.json
  def destroy
    @xbots_configuration.destroy

    respond_to do |format|
      format.html { redirect_to xbots_configurations_url, notice: "Xbots configuration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xbots_configuration
      @xbots_configuration = XbotsConfiguration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xbots_configuration_params
      params.fetch(:xbots_configuration, {})
    end
end
