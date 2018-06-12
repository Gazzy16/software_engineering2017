Rails.application.routes.draw do
  resources :employees
  resources :companies

  get 'A_24_Stefan_Angelov', to: 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
