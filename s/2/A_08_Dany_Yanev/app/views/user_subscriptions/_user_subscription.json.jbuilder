json.extract! user_subscription, :id, :user_id, :subscription_id, :user_type, :created_at, :updated_at
json.url user_subscription_url(user_subscription, format: :json)
