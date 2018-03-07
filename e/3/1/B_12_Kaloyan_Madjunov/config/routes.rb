Rails.application.routes.draw do
  resources :my_schools
  resources :students

	get '/b_12_kaloyan_madjunov' =>'students#b_12_kaloyan_madjunov'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
