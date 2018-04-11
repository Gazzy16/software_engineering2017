Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources 'teacher'
	resources 'school'
	get '/teacher/new', to: 'teachers#new'
	post '/teacher/new', to: 'teachers#create'
	get '/school/new', to: 'schools#new'
	post '/school/new', to: 'schools#create'
end
