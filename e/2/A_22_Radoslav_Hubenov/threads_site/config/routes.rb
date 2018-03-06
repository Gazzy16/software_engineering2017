Rails.application.routes.draw do
  resources :thread_a22_radoslav_hubenovs
  resources :process_a22_radoslav_hubenovs
  root 'process_a22_radoslav_hubenovs#index' 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
