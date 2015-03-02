json.array!(@teams) do |team|
  json.extract! team, :id, :name, :city, :state, :country, :website, :facebook, :twitter, :gplus, :instagram, :other_names
  json.url team_url(team, format: :json)
end
