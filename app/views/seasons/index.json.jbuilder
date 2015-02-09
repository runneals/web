json.array!(@seasons) do |season|
  json.extract! season, :id, :year_start, :year_end, :name, :offseason, :logo
  json.url season_url(season, format: :json)
end
