Rails.application.routes.draw do
  resources :specialty_schools
  resources :schools
  resources :specialties

  get '/11b_14_KristiqnStoimenovspecialty', to: 'specialty_schools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
