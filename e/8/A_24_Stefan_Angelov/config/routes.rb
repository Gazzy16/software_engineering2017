Rails.application.routes.draw do
  resources :manufactures
  resources :computers

  get '11a_24StefanAngelovcomputers', to: 'computers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
