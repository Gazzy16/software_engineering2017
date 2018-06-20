Rails.application.routes.draw do
  resources :manufactures
  resources :computers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/A_19_Momchil_Todorov', to: 'computers#index'
end
