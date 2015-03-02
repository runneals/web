require 'rails_helper'

RSpec.describe "teams/show", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "Name",
      :city => "City",
      :state => "State",
      :country => "Country",
      :website => "Website",
      :facebook => "Facebook",
      :twitter => "Twitter",
      :gplus => "Gplus",
      :instagram => "Instagram",
      :other_names => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Gplus/)
    expect(rendered).to match(/Instagram/)
    expect(rendered).to match(/MyText/)
  end
end
