class Season < ActiveRecord::Base
  has_many :events
  has_attached_file :logo, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style/FTC.png"
  
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
