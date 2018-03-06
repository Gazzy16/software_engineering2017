Rails.application.routes.draw do
  resources :process_martin_ms do
    resources :thread_martin_ms
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
