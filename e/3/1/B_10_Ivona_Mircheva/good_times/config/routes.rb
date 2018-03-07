Rails.application.routes.draw do
  resources :students
  resources :schools
  get '/B_10_Ivona_Mircheva_schools/', to: 'schools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
