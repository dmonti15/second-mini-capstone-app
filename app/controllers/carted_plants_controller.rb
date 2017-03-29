class CartedPlantsController < ApplicationController

  def index
    @carted_plants = current_user.carted_plants.where(status: "carted")
    render "index.html.erb"
  end

  def create
    # plant_id = params[:plant_id]
    # plant = Plant.find_by(id: plant_id)
    # calculated_tax = plant.price * 0.09
    # order_total = plant.price + calculated_tax
    

    carted_plant = CartedPlant.new(
      user_id: current_user.id,
      plant_id: params["plant_id"],
      quantity: params[:quantity],
      status: "carted"
      # subtotal: plant.price,
      # tax: calculated_tax,
      # total: order_total
      )
    carted_plant.save
    redirect_to "/checkout"
  end

end
