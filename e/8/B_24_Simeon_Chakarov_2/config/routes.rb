Rails.application.routes.draw do
  resources :manufactures
  resources :cars
  get "/B_24_Simeon_Chakarov", to: "cars#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
