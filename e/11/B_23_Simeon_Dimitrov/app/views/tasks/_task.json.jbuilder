json.extract! task, :id, :name, :description, :solreq, :created_at, :updated_at
json.url task_url(task, format: :json)
