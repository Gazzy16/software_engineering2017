Rails.application.routes.draw do
  resources :manufactures
  resources :cars
  get '/11b_23_SimeonDimitrovcars', to: 'cars#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
