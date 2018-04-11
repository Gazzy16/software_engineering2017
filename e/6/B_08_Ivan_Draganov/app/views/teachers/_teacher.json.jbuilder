json.extract! teacher, :id, :first_name, :middle_name, :teacher_title, :teacher_subject, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
