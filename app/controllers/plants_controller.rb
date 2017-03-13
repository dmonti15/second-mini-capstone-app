class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    plant = Plant.new(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )
    plant.save
    render "create.html.erb"
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
