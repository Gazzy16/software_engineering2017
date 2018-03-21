Rails.application.routes.draw do
  resources :product_clients
  resources :products
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/B_11_Iliyan_Tachev_clients/", to: "clients#index"
end
