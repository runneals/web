class Team < ActiveRecord::Base
  has_many :team_division_informations
  has_many :divisions, :through => :team_division_informations
  has_many :award_winners
  has_many :awards, :through => :award_winners

  def to_label
    id.to_s + ' - ' + name
  end

  def self.by_match(match)
    where('id IN (:r1, :r2, :r3, :b1, :b2, :b3)', r1: match.r1_team_id, r2: match.r2_team_id, r3: match.r3_team_id, b1: match.b1_team_id, b2: match.b2_team_id, b3: match.b3_team_id)
  end
end
