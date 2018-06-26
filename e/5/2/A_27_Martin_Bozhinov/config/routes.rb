Rails.application.routes.draw do
  resources :devs

  get "projects/new", to: "projects#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
