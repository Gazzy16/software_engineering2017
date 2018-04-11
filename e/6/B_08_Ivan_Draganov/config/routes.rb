Rails.application.routes.draw do
  resources :teacher_classes
  resources :school_classes
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
