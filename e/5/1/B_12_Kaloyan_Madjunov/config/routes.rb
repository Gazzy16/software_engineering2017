Rails.application.routes.draw do
  resources :clients_products
  resources :products
  resources :clients

	get "/11b_12_Kaloyan_MadjunovProducts" => "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
