class PlantsController < ApplicationController

  def index
    if params[:discounted] == "true"
      @plants = Plant.where("price < ?", 60)
    else
      sort_attribute = params[:sort_by] || "name"
      sort_attribute_order = params[:sort_order] || "asc"
      @plants = Plant.all.order(sort_attribute => sort_attribute_order)
    end
    render "index.html.erb"
  end

  def new
    if params[:new_type] == "supplier"
      render "new_supplier.html.erb"
    elsif params[:new_type] == "plant"
      render "new_plant.html.erb"
    end
  end

  def create_plant
    plant = Plant.create(
      name: params[:name],
      price: params[:price],
      description: params[:description]
      )

    image = Image.create(
      url: params[:image],
      plant_id: @plant.id)
    render "create.html.erb"
  end

  def create_supplier
    supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
    supplier.save
    redirect_to "/plants"
  end

  def show
    plant_id = params[:id]
    @plant = Plant.find_by(id: plant_id)
    render "show.html.erb"
  end

  def edit
    plant_id = params[:id]
    @plant = Plant.find_by(id: plant_id)
    render "edit.html.erb"
  end

  def update
    plant_id = params[:id]
    @plant = Plant.find_by(id: plant_id)
    @plant.name = params[:name]
    @plant.price = params[:price]
    @plant.image = params[:image]
    @plant.description = params[:description]
    @plant.save
    render "update.html.erb"
  end

  def destroy
    plant_id = params[:id]
    @plant = Plant.find_by(id: plant_id)
    @plant.destroy
    render "destroy.html.erb"
  end

end
