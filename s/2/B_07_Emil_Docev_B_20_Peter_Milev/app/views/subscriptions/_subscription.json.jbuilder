json.extract! subscription, :id, :user_id, :subscription_id, :role, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
