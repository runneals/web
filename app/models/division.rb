class Division < ActiveRecord::Base
  belongs_to :event
  has_many :matches
  has_many :team_division_informations
  has_many :teams, :through => :team_division_informations
end
