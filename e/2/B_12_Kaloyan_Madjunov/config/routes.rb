Rails.application.routes.draw do
  resources :program_b_12s, controller: 'program_b_12s'
  resources :thread_b_12s

	root 'program_b_12s#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
