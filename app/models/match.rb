class Match < ActiveRecord::Base
  belongs_to :division

  def teams
    Team.by_match(self)
  end

  def r1_team
    Team.find(self.r1_team_id)
  end

  def r2_team
    Team.find(self.r2_team_id)
  end

  def r3_team
    if self.match_type == "SEMIFINAL" || self.match_type == "FINAL"
      Team.find(self.r3_team_id)
    end
  end

  def b1_team
    Team.find(self.b1_team_id)
  end

  def b2_team
    Team.find(self.b2_team_id)
  end

  def b3_team
    if self.match_type == "SEMIFINAL" || self.match_type == "FINAL"
      Team.find(self.b3_team_id)
    end
  end
end
