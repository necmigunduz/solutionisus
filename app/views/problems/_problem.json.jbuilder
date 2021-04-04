json.extract! problem, :id, :problem_title, :problem_explanation, :created_at, :updated_at
json.url problem_url(problem, format: :json)
