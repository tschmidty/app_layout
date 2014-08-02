json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :client_id, :created_at, :updated_at, :cost, :start_date, :end_date
  json.url campaign_url(campaign, format: :json)
end
