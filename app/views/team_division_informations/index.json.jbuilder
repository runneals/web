json.array!(@team_division_informations) do |team_division_information|
  json.extract! team_division_information, :id, :division_id, :team_id, :name, :organization, :high, :qp, :rp, :qual_wins, :qual_losses, :qual_ties, :elim_wins, :elim_losses, :elim_ties
  json.url team_division_information_url(team_division_information, format: :json)
end
