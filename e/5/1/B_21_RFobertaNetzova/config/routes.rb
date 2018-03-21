Rails.application.routes.draw do
  resources :client_products
  resources :clients
  resources :products
	get "/B_21_Roberta_Netzovaproducts/", to: "client_products#index"	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
