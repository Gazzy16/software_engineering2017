json.extract! connection, :id, :project_id, :developer_id, :created_at, :updated_at
json.url connection_url(connection, format: :json)
