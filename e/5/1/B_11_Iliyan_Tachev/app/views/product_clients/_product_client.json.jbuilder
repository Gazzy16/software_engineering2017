json.extract! product_client, :id, :product_name, :client_name, :created_at, :updated_at
json.url product_client_url(product_client, format: :json)
