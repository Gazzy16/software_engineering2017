Rails.application.routes.draw do
  resources :teachers
  resources :teacher_school_classes
  resources :school_classes

  get'/11b_09_IvanViyachkiteachers/', to: 'teachers#new'
  get'/11b_09_IvanViyachkischool/', to: 'school_classes#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
