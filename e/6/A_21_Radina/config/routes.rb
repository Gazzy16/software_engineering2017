Rails.application.routes.draw do
  resources :connects
  resources :teachers
  resources :schools
  get 'A_Radina_Tsareva'=> 'connects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
