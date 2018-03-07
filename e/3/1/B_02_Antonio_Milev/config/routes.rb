Rails.application.routes.draw do
  resources :schools
  resources :students

  get "/11b_A_M_schools", to: "students#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
