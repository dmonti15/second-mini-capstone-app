Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "plants#index"
  get "/plants" => "plants#index"
  get "/plants/new" => "plants#new"
  post "/plants" => "plants#create"
  get "/plants/:id" => "plants#show"
  get "/plants/:id/edit" => "plants#edit"
  patch "/plants/:id" => "plants#update"
  delete "/plants/:id" => "plants#destroy"
end
