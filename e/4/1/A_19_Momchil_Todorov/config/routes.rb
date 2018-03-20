Rails.application.routes.draw do
	resources 'bottles'
	post '/bottles/new', to: 'bottles#create'
	resources 'tables'
	get '/A_19_Momchil_Todorov', to: 'tables#show'
	post '/tables/new', to: 'tables#create'
end
