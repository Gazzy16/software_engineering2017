Rails.application.routes.draw do
  resources :rooms
  resources :computers
  get '11a_18_MartinTodorovsubjects' => 'computers#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
