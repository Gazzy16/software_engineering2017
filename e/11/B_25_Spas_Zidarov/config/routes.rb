Rails.application.routes.draw do
  resources :task_solutions
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end