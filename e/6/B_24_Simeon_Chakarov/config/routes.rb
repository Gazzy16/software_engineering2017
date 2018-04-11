Rails.application.routes.draw do
  resources :school_classes
  resources :teachers_schools
  resources :teachers
 get "/B_24_Simeon_Chakarov", to: "teachers_schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
