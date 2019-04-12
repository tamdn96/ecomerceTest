json.extract! file_export, :id, :file, :description, :created_at, :updated_at
json.url file_export_url(file_export, format: :json)
