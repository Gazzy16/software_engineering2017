Rails.application.routes.draw do
  resources :connection_between_developer_and_projects
  resources :projects
  resources :developers
  root 'connection_between_developer_and_projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
