Rails.application.routes.draw do
  resources :members_teams
  resources :members
  resources :teams

	get "/11b_08_Ivan_Draganov" => "teams#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
