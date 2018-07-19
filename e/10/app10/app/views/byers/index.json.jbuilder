json.array!(@byers) do |byer|
  json.extract! byer, :id, :money, :name, :country
  json.url byer_url(byer, format: :json)
end
