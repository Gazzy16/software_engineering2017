Rails.application.routes.draw do
  get 'bottle/color:string'

  get 'bottle/brand:string'

  get 'bottle/table_id:integer'

  resources :tables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
