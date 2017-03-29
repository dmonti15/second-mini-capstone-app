class OrdersController < ApplicationController

  def create
    # plant_id = params[:plant_id]
    # plant = Plant.find_by(id: plant_id)
    # calculated_tax = plant.price * 0.09
    # order_total = plant.price + calculated_tax
    # order = Order.new(
    #   user_id: current_user.id,
    #   product_id: plant_id,
    #   quantity: params[:quantity],
    #   subtotal: plant.price,
    #   tax: calculated_tax,
    #   total: order_total
    #   )
    # order.save
    # redirect_to "/orders/#{order.id}"
  end

  def show
    render "show.html.erb"
  end

end
