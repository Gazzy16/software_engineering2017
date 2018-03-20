Rails.application.routes.draw do
  get '/11a_06_ViktorNaychevbottles/' => 'bottles#index'
  resources :bottles
  resources :tables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
