
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "plants#index"
  get "/plants" => "plants#index"
  get "/plants/new" => "plants#new"
  post "/plants/create_supplier" => "plants#create_supplier"
  post "/plants/create_plant" => "plants#create_plant"
  get "/plants/:id" => "plants#show"
  get "/plants/:id/edit" => "plants#edit"
  patch "/plants/:id" => "plants#update"
  delete "/plants/:id" => "plants#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
end
