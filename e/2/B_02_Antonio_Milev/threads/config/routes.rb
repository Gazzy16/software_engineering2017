Rails.application.routes.draw do
  resources :threadrs do
    resources :programs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
