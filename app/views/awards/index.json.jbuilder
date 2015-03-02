json.array!(@awards) do |award|
  json.extract! award, :id, :name, :description, :order
  json.url award_url(award, format: :json)
end
