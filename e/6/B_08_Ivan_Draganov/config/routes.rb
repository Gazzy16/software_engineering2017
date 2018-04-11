Rails.application.routes.draw do
  resources :teacher_classes
  resources :school_classes
  resources :teachers
  get '/11b_08_Ivandraganovsubjects', to: 'school_classes#index'	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
