Rails.application.routes.draw do
  get '/11a_6_ViktorNaychevsubjects/' => 'computers#index'
  resources :computers
  resources :rooms
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
