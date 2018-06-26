Rails.application.routes.draw do
  resources :connects
  resources :schools
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'A_21_radina_tsareva' => "connects#index"
end
