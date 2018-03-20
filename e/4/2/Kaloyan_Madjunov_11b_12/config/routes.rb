Rails.application.routes.draw do
  resources :cinema_films
  resources :cinemas
  resources :films

	get "/11b_12_Kaloyan_Madjunovfilms" => "films#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
