Rails.application.routes.draw do
  resources :connection_sub_customers
  resources :subscriptions
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
