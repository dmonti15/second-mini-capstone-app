class PlantsController < ApplicationController

  def first_plant_method
    @plant = Plant.first
    render "plants.html.erb"
  end

  def plant_all_method
    @plants = Plant.all
    render "allplants.html.erb"
  end
end
