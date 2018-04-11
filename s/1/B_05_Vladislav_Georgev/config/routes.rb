Rails.application.routes.draw do
  resources :user_subscribtion_connections
  resources :subscriptions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
