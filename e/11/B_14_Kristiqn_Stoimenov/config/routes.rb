Rails.application.routes.draw do
  resources :task_solutions
  resources :tasks

	get '/11b_14_KristiqnStoimenovtask', to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
