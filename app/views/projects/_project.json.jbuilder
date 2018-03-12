json.extract! project, :id, :title, :link, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
