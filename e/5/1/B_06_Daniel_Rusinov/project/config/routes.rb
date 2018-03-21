Rails.application.routes.draw do
  resources :client_products
  resources :products
  resources :clients
  
    get '/11b_06_Daniel_RusinovClient_products', to: 'client_products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
