Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :teacher_schools
  resources :schools
  resources :teachers
>>>>>>> 435dff1763581e9ccfd44a6a38969ebd44a6df7b
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/A_19_Momchil_Todorov', to: 'teacher_schools#index'
end
