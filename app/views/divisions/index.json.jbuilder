json.array!(@divisions) do |division|
  json.extract! division, :id, :event_id, :division_uuid, :name, :match_count, :team_count, :high_total, :high_scored, :average_total, :average_scored, :red_wins, :blue_wins, :ties, :average_winning_total, :average_losing_total, :average_winning_scored, :average_losing_scored
  json.url division_url(division, format: :json)
end
