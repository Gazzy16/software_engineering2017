json.extract! teacher, :id, :firstname, :lastname, :title, :subject, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
