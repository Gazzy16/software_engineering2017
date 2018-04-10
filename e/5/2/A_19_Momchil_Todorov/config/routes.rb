Rails.application.routes.draw do
	resources 'projects'
	get '/projects/new', to: 'projects#show'
	post '/projects/new', to: 'projects#create'
	resources 'devs'
	get '/devs/new', to: 'devs#show'
	post '/devs/new', to: 'devs#create'
end
