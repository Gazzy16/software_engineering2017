Rails.application.routes.draw do
  resources :tables
  resources :bottles
   get '/a12karinakozarovabottles', to: 'bottles#both'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
