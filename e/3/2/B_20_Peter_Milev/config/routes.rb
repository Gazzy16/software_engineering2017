Rails.application.routes.draw do
  resources :subjects
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/11b_20_PeterMilevsubjects', to: subjects#index
end
