Rails.application.routes.draw do
  resources :schools
  resources :students
  
  get '//11b_06_Daniel_RusinovSchools', to: 'schools#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
