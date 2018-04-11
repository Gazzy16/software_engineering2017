json.extract! teacher, :id, :teacher_name, :middlename, :title, :subject, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
