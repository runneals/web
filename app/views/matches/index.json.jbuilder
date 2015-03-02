json.array!(@matches) do |match|
  json.extract! match, :id, :division_id, :name, :type, :r1_team_id, :r2_team_id, :r3_team_id, :b1_team_id, :b2_team_id, :b3_team_id, :scored_red, :total_red, :scored_blue, :total_blue, :outcome, :video
  json.url match_url(match, format: :json)
end
