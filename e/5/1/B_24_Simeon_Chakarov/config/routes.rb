Rails.application.routes.draw do
  resources :client_products
  resources :clients
  resources :products
  get "/B_24_Simeon_Chakarov_products", to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
