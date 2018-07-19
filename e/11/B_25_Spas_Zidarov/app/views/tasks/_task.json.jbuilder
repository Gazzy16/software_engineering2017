json.extract! task, :id, :name, :decription, :solution, :created_at, :updated_at
json.url task_url(task, format: :json)
