json.extract! client_product, :id, :client_id, :product_id, :created_at, :updated_at
json.url client_product_url(client_product, format: :json)
