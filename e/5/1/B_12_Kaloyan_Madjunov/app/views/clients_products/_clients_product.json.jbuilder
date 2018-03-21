json.extract! clients_product, :id, :client_id, :product_id, :created_at, :updated_at
json.url clients_product_url(clients_product, format: :json)
