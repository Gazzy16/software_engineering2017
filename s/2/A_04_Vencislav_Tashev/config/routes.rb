Rails.application.routes.draw do
  root 'subscription_users#index'

  resources :subscription_users
end
