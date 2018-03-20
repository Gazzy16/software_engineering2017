Rails.application.routes.draw do
	resources 'bottles'
	post 
	resources 'tables'
	get '/A_19_Momchil_Todorov', to: 'tables#show'
end
