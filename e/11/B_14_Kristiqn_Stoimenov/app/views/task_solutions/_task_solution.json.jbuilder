json.extract! task_solution, :id, :picture, :status, :confirmed, :task_id, :created_at, :updated_at
json.url task_solution_url(task_solution, format: :json)
