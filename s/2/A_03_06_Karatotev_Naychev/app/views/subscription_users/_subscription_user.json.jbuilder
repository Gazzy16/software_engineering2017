json.extract! subscription_user, :id, :user_type, :user_id, :subscription_id, :created_at, :updated_at
json.url subscription_user_url(subscription_user, format: :json)
