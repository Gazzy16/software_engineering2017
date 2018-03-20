Rails.application.routes.draw do
  resources :bottles
  resources :tables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/11a_07_VladimirVladinovbottles/' => 'bottles#index'
end
