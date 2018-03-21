Rails.application.routes.draw do
  resources :connection_product_clients
  resources :products
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/B_13_Konstantin_Mihaylov_clients/", to: "clients#index"
end
