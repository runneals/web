json.array!(@events) do |event|
  json.extract! event, :id, :season_id, :name, :city, :state, :country, :start, :end, :type
  json.url event_url(event, format: :json)
end
