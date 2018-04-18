json.extract! sub_user, :id, :user_id, :sub_id, :role, :created_at, :updated_at
json.url sub_user_url(sub_user, format: :json)
