Rails.application.routes.draw do
  resources :schoolclasses, path: '/11b_19_Peter_Mihaylovsubjects'
  resources :teachers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
