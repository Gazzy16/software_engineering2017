json.extract! subscription_user, :id, :sub_id, :user_id, :created_at, :updated_at
json.url subscription_user_url(subscription_user, format: :json)