Rails.application.routes.draw do
  resources :schools
  resources :students
  get '/A_12_Karina_Kozarova', to: 'schools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
