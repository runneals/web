class Award < ActiveRecord::Base
  has_many :award_winners
end
