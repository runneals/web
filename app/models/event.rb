class Event < ActiveRecord::Base
  belongs_to :season
  has_many :divisions
  has_many :award_winners
end
