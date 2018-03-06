Rails.application.routes.draw do
  resources :process_11_a_23s

resources :process_11_a_23s do
  resources :thread_11_a_23s
end

  #root 'process_11_a_23s#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
