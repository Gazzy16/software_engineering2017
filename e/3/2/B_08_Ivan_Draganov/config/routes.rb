Rails.application.routes.draw do
  resources :subjects
  resources :teachers
	get '/b_08_ivan_draganovsubjects' => 'subjects#b_08_ivan_draganov'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
