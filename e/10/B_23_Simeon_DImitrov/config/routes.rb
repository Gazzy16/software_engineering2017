Rails.application.routes.draw do
  resources :specialties
  resources :schools

  get '/11b_23_SimeonDimitrovschools', to: 'schools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
