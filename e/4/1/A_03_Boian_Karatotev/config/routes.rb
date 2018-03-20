Rails.application.routes.draw do
  resources :bottles
  resources :tables
  get '11a_03_BoianKaratotevbottles', to: 'list_bottles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
