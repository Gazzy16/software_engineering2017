Rails.application.routes.draw do
  resources :car_manufactures
  resources :manufactures
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
