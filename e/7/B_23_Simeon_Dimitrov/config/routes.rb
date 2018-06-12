Rails.application.routes.draw do
  resources :team_members, path: '/11b_23_SimeonDimitrovmembers/'
  resources :members
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
