Rails.application.routes.draw do
  resources :client_products
  resources :products
  resources :clients

  get "/B_Antonio_Milev_products", to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
