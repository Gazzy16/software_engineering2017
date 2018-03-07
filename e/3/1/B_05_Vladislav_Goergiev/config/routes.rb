Rails.application.routes.draw do
  get '/B_05_Vladislav_Georgievschools', to: 'students#index'
  resources :mschools
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
