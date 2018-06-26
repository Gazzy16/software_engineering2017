Rails.application.routes.draw do
  resources :teacher_schools
  resources :schools
  resources :teachers
  get "/B_24_Simeon_Chakarov", to: "teacher_schools#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
