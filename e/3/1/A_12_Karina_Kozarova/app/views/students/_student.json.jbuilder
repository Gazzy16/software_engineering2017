json.extract! student, :id, :firstname, :secondname, :email, :school_id, :created_at, :updated_at
json.url student_url(student, format: :json)
