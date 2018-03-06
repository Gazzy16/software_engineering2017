Rails.application.routes.draw do
  resources :products, only: [:index, :create, :new]
  resources :orders, only: [:index, :create, :new]
end
