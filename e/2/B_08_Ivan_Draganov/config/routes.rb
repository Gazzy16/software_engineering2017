Rails.application.routes.draw do
  resources :programs do
 	 resources :thread_drags
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
