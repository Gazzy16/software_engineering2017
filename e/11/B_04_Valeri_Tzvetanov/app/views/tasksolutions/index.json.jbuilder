json.array!(@tasksolutions) do |tasksolution|
  json.extract! tasksolution, :id, :texts, :status, :confirmed, :sid
  json.url tasksolution_url(tasksolution, format: :json)
end
