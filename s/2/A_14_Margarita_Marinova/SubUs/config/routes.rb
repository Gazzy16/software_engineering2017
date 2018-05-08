Rails.application.routes.draw do
  resources :subscription_users
  resources :subscriptions
  resources :users

  get '/user/new', to: 'users#new'

end
