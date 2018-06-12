Rails.application.routes.draw do
  resources :employees
  resources :comps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/company/new', to: 'comps#new'
  post '/company', to: 'comps#create'

  get '/employees/new', to: 'employees#new'
  post '/employee', to: 'employees#create'
end
