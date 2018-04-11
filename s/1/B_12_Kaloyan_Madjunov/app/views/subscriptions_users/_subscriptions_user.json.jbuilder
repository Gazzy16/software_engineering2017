json.extract! subscriptions_user, :id, :subscription_id, :user_id, :user_role, :created_at, :updated_at
json.url subscriptions_user_url(subscriptions_user, format: :json)
