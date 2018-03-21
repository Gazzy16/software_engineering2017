Rails.application.routes.draw do
  resources :connections
  resources :developers
  resources :projects
  
  get 'A_28_Daniel_Raykov', to: 'connections#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
