Rails.application.routes.draw do
  resources :schools
  resources :teachers
  get '/teacher/new', to: 'teachers#new'
  post '/teacher/new', to: 'teachers#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
