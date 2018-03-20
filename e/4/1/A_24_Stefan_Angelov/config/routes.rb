Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources 'bottles'
	get '/bottles', to: 'bottles#new'
	post '/bottles', to: 'bottles#new'
	get '/11a_24_StefanAngelovbottles', to: 'bottles#index'
end
