Rails.application.routes.draw do
  resources :employees
  resources :companies
  # For details on the DSL available within this file, see http://guides

  get "company/new" => "companies#new"
  get "employee/new" => "employees#new"

end
