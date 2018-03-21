Rails.application.routes.draw do
  resources :cinema_films
  resources :films
  resources :cinemas
  get "/rety/", to: "cinema_films#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
