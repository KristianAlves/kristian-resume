json.extract! profile, :id, :name, :phone, :mail, :created_at, :updated_at
json.url profile_url(profile, format: :json)
