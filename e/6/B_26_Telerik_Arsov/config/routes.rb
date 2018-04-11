Rails.application.routes.draw do
  resources :school_classes
  resources :teachers
  get '/11b_26_TelerikArsovsubjects', to: 'school_classes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
