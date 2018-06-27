Rails.application.routes.draw do
  resources :school_specialties
  resources :schools
  resources :specialties
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
