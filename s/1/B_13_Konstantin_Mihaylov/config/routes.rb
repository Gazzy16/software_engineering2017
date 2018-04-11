Rails.application.routes.draw do
  resources :school_classes
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'school_classes' => 'new'
end
