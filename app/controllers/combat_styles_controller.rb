class CombatStylesController < ApplicationController
  def index
    @combat_styles = CombatStyle.all
  end
end
