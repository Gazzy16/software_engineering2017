Rails.application.routes.draw do
	resources 'projects'
	post '/projects/new', to: 'projects#create'
	resources 'devs'
	post '/devs/new', to: 'devs#create'
end
