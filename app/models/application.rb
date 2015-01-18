class Application < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  attr_accessor :free_carrier_input
  has_attached_file :screenshot, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "60x60>" }, :default_url => ":style/missing.png"
  
  validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/

  validates :screenshot, presence: true
  validates :local_leader, presence: true
  validates :first_time, inclusion: [true, false]
  validates :onsite, inclusion: [true, false]

  def status
    EventRole.where(:event_id => event_id, :user_id => user_id).first.role
  end

  def experience_html
    html = "<ul class='fa-ul'>"
    html += "<li>"
    if self.previous_dispatch
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Dispatch</li>"
    html += "<li>"
    if self.previous_intel
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Intel Team</li>"
    html += "<li>"
    if self.previous_cluster
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Cluster Team</li>"
    html += "<li>"
    if self.previous_volatile
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Volatile Team</li>"
    html += "<li>"
    if self.previous_bike
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Bike Team</li>"
    html += "<li>"
    if self.previous_field_link
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Field/Link Team</li>"
    html += "<li>"
    if self.previous_team_lead
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Team Lead</li>"
    html += "<li>"
    if self.previous_baf
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "BAF</li>"
    html += "<li>"
    if self.previous_spec_ops
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Spec Ops</li>"
    html += "<li>"
    if self.previous_lone_wolf
      html += "<i class='fa-li fa fa-check-circle green'></i>"
    else
      html += "<i class='fa-li fa fa-minus-circle red'></i>"
    end
    html += "Lone Wolf</li>"
    if self.previous_other != ""
      html += "<li><i class='fa-li fa fa-check-circle green'></i>#{self.previous_other}</li>"
    end
    if self.play_experience == 1
      html += "<li>Newbie</li>"
    elsif self.play_experience == 2
      html += "<li>No Anomaly Experience</li>"
    elsif self.play_experience == 3
      html += "<li>Anomaly Experience</li>"
    elsif self.play_experience == 4
      html += "<li>Team Lead Experience</li>"
    elsif self.play_experience == 5
      html += "<li>Anomaly Expert</li>"
    else
      html += "<li>Play Experience Missing<li>"
    end
    html += "</ul>"
  end
end
