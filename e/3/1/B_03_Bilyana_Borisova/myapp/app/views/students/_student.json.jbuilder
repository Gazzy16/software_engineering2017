json.extract! student, :id, :first_name, :second_name, :email, :school, :created_at, :updated_at
json.url student_url(student, format: :json)
