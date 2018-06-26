Rails.application.routes.draw do
  resources :school_teachers
  resources :schools
  resources :teachers

  get '/11b_23_SimeonDimitrovteachers', to: 'school_teachers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
