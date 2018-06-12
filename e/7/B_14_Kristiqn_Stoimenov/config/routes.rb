Rails.application.routes.draw do
  resources :tems_to_members, path: '/11b_14_KristiqnStoimenovmembers/'
  resources :members
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
