Rails.application.routes.draw do
	resources 'computers'
	get '/A_19_Momchil_Todorov', to: 'rooms#show'
end
