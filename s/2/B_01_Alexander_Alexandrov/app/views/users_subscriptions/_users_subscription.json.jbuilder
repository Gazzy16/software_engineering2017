json.extract! users_subscription, :id, :user_id, :subscription_id, :role, :created_at, :updated_at
json.url users_subscription_url(users_subscription, format: :json)
