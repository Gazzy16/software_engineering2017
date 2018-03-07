Rails.application.routes.draw do
  resources :rooms
  resources :computers
  get '/A_10_ZahariTasevsubjects', to: 'a_10_zaharitasevsubjects#show'
end
