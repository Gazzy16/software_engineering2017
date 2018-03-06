Rails.application.routes.draw do
  get 'articles/new'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/' => 'articles#new'
	post '/articles/new' => 'articles#add'

	get '/del' => 'articles#del'

	get '/order/:id' => 'articles#ord'
end
