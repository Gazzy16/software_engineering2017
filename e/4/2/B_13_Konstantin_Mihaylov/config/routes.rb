Rails.application.routes.draw do
  resources :cinemas_films
  resources :films
  resources :cinemas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/B_13_Konstantin_Mihaylov_films/", to: "films#index"
end
