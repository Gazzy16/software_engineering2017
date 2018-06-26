json.extract! teacher, :id, :first_name, :second_name, :subject, :email, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
