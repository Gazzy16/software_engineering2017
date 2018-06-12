Rails.application.routes.draw do
  resources :teams
  resources :team_members
  resources :members

  post'/member/new', to: 'members#new'
  post'/teams/new', to: 'teams#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
