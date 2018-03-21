Rails.application.routes.draw do
  resources :connections
  resources :developers
  resources :projects
  get 'A_21_Radina_Tsareva',to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
