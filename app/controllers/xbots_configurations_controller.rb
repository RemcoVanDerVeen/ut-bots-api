class XbotsConfigurationsController < ApplicationController
  before_action :set_xbots_configuration, only: %i[ show edit update destroy ]

  def index
    @xbots_configurations = XbotsConfiguration.includes(:botlists)
  end

  def show
  end

  def new
    @xbots_configuration = XbotsConfiguration.new
  end

  def edit
  end

  def create
    @xbots_configuration = XbotsConfiguration.new(xbots_configuration_params)

    respond_to do |format|
      if @xbots_configuration.save
        format.html { redirect_to xbots_configuration_url(@xbots_configuration), notice: "Xbots configuration was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @xbots_configuration.update(xbots_configuration_params)
        format.html { redirect_to xbots_configuration_url(@xbots_configuration), notice: "Xbots configuration was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @xbots_configuration.destroy

    respond_to do |format|
      format.html { redirect_to xbots_configurations_url, notice: "Xbots configuration was successfully destroyed." }
    end
  end

  private

  def set_xbots_configuration
    @xbots_configuration = XbotsConfiguration.find(params[:id])
  end

  def xbots_configuration_params
    params.require(:xbots_configuration).permit(:name, :description, :is_active, :is_enabled, :position)
  end
end
