Rails.application.routes.draw do
   get 'teacher/list'
   get 'teacher/new'
   post 'teacher/create'
   patch 'teacher/update'
   get 'teacher/list'
   get 'teacher/show'
   get 'teacher/edit'
   get 'teacher/delete'
   get 'teacher/update'
   get 'teacher/show_subjects'
end
