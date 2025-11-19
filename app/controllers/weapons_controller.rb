class WeaponsController < ApplicationController
  before_action :set_weapon, only: %i[ show edit update destroy ]

  def index
    @weapons = Weapon.all
  end

  def show
  end

  def new
    @weapon = Weapon.new
  end

  def edit
  end

  def create
    @weapon = Weapon.new(weapon_params)

    respond_to do |format|
      if @weapon.save
        format.html { redirect_to weapon_url(@weapon), notice: "Weapon was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @weapon.update(weapon_params)
        format.html { redirect_to weapon_url(@weapon), notice: "Weapon was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @weapon.destroy

    respond_to do |format|
      format.html { redirect_to weapons_url, notice: "Weapon was successfully destroyed." }
    end
  end

  private

  def set_weapon
    @weapon = Weapon.find(params[:id])
  end

  def weapon_params
    params.require(:weapon).permit(:name, :description, :vanilla, :ut_value)
  end
end
