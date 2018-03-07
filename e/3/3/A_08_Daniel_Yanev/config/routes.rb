Rails.application.routes.draw do
  resources :computers
  resources :rooms

  get "/11a_08_DanielYanevsubjects" => "computers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
