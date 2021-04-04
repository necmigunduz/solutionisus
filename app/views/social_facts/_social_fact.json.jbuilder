json.extract! social_fact, :id, :social_fact_title, :social_fact_definition, :created_at, :updated_at
json.url social_fact_url(social_fact, format: :json)
