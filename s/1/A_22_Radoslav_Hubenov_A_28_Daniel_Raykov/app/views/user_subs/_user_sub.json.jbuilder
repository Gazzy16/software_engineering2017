json.extract! user_sub, :id, :user_id, :sub_id, :role, :created_at, :updated_at
json.url user_sub_url(user_sub, format: :json)
