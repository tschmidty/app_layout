json.array!(@projects) do |project|
  json.extract! project, :id, :name, :campaign_id, :created_at, :updated_at, :active, :client_id
  json.url project_url(project, format: :json)
end
