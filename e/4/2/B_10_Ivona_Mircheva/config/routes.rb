Rails.application.routes.draw do
  resources :cinema_films
  resources :cinemas
  resources :films
  get "/B_10_Ivona_Mircheva_films/", to: "films#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
