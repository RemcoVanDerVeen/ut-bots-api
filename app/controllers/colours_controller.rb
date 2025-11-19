class ColoursController < ApplicationController
  def index
    @colours = Colour.all.order(:ut_value)
  end
end
