json.extract! room, :id, :roomsize, :roomnumber, :created_at, :updated_at
json.url room_url(room, format: :json)
