json.array!(@creations) do |creation|
  json.extract! creation, :id, :name, :stage, :revision, :description, :created_at, :updated_at, :project_id, :file_file_name, :file_content_type, :file_file_size, :file_updated_at, :designer_id, :hours, :client_id, :status, :color_space, :bleed, :estimate_id
  json.url creation_url(creation, format: :json)
end
