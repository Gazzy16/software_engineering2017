Rails.application.routes.draw do
  get 'orders/index'

  get 'orders/new'

  get 'orders/create'

  get 'orders/destroy'
  
  get 'orders/order'
  
  resources :orders, only: [:index, :new, :create, :destroy, :order]
  root "orders#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
