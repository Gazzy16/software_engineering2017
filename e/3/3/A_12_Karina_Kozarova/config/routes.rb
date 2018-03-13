Rails.application.routes.draw do
  resources :rooms
  resources :computers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'A_12_Karina_Kozarova',to: 'rooms#index'
end
