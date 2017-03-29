class CartedProductsController < ApplicationController

  def create
    # plant_id = params[:plant_id]
    # plant = Plant.find_by(id: plant_id)
    # calculated_tax = plant.price * 0.09
    # order_total = plant.price + calculated_tax
    

    carted_plant = CartedPlant.new(
      user_id: current_user.id,
      plant_id: plant_id,
      quantity: params[:quantity],
      status: "carted"
      # subtotal: plant.price,
      # tax: calculated_tax,
      # total: order_total
      )
    carted_plant.save
    redirect_to "/carted_plants"
  end

end
