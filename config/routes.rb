Rails.application.routes.draw do
  resources :ing_skin_attrs
  resources :product_ingredients
  resources :recommendations
  resources :products
  resources :skin_attributes
  resources :ingredients, only: [:index]
  resources :users, only: [:update, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
