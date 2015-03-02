class AwardWinner < ActiveRecord::Base
  belongs_to :event
  belongs_to :team
  belongs_to :award
end
