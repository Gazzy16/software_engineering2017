json.array!(@cars) do |car|
  json.extract! car, :id, :model, :number, :color, :year_manifactured
  json.url car_url(car, format: :json)
end
