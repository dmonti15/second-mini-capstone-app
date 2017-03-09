Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/first_plant_url" => "plants#first_plant_method"
  get "/all_plants_url" => "plants#plant_all_method"
end
