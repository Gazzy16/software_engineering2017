Rails.application.routes.draw do
  resources :school_classes
  resources :teachers_schools
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end