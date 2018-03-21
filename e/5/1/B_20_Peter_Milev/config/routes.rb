Rails.application.routes.draw do
  resources :client_product_connections
  resources :clients
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/11b_20_PeterMilevproducts', to: 'products#new'
  get '/11b_20_PeterMilevclients', to: 'clients#new'
  get '/11b_20_PeterMilevclientproductconnections', to: 'client_product_connections#new'
end
