json.extract! student, :id, :firstName, :secondName, :email, :school_id, :created_at, :updated_at
json.url student_url(student, format: :json)
