require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :season_id => 1,
        :name => "Name",
        :city => "City",
        :state => "State",
        :country => "Country",
        :type => "Type"
      ),
      Event.create!(
        :season_id => 1,
        :name => "Name",
        :city => "City",
        :state => "State",
        :country => "Country",
        :type => "Type"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
