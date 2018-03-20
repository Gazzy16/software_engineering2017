Rails.application.routes.draw do
  resources :films
  resources :cinemas
	get '/B_21_Roberta_Netzovafilms/', to: 'films#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
