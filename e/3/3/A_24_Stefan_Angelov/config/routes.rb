Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'a_24_stefan_angelov_subjects', to: 'students#mySubjects'
	resources 'students'
	resources 'schools'
	get 'students/new', to: 'students#new'
	post 'students/new', to: 'students#create'
end
