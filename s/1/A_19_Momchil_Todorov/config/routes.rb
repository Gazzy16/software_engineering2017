Rails.application.routes.draw do
  resources :sub_users
  resources :subs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
