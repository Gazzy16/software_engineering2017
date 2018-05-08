Rails.application.routes.draw do
	resources :products, only: [:index]
	get '/products/:id', to: 'products#show'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
