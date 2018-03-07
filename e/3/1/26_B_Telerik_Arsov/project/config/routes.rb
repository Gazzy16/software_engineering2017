Rails.application.routes.draw do
  get "B_26_Telerik_Arsovschools", to: "students#index"
  resources :students
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
