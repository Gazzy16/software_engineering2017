json.extract! client, :id, :clientname, :created_at, :updated_at
json.url client_url(client, format: :json)
