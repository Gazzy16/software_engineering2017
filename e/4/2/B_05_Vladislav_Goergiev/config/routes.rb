Rails.application.routes.draw do
  get '11_b_05_VladislavGeorgievfilms', to: 'films#index'
  resources :cinemas
  resources :films
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
