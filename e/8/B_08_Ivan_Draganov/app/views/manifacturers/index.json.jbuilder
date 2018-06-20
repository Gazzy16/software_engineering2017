json.array!(@manifacturers) do |manifacturer|
  json.extract! manifacturer, :id, :name, :location
  json.url manifacturer_url(manifacturer, format: :json)
end
