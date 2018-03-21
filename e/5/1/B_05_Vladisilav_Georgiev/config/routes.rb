Rails.application.routes.draw do
  resources :product_client_connections, path: '/11b_05_VladislavGeorgievproducts/'
  resources :clients
  resources :products
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
