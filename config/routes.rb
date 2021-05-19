Rails.application.routes.draw do
  #user

  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/ba", to: "users#show"
  patch "/ba", to: "users#update"
  get "/users/:id", to: "users#show_with_id"



  resources :photos, only: [:create, :index]
  resources :ing_skin_attrs
  resources :product_ingredients
  resources :recommendations
  resources :products
  resources :skin_attributes
  resources :ingredients
  # resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
