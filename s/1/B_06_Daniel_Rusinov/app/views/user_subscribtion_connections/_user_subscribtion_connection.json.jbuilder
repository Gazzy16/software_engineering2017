json.extract! user_subscribtion_connection, :id, :user_id, :subscription_id, :role, :created_at, :updated_at
json.url user_subscribtion_connection_url(user_subscribtion_connection, format: :json)
