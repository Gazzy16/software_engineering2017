Rails.application.routes.draw do
  resources :client_products
  resources :clients
  resources :products
  get "/B_Telerik_arsov_products", to: "client_products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
