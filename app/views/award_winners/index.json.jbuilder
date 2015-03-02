json.array!(@award_winners) do |award_winner|
  json.extract! award_winner, :id, :event_id, :award_id, :team_id, :place
  json.url award_winner_url(award_winner, format: :json)
end
