Rails.application.routes.draw do
  resources :teachers
  resources :teacher_school_classes
  resources :school_classes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
