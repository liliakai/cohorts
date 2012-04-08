class HousesController < ApplicationController
  before_filter :set_house

  def set_house
    @house = House.find(params[:id])
  end

end
