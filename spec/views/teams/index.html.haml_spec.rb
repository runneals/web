require 'rails_helper'

RSpec.describe "teams/index", :type => :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
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
      ),
      Team.create!(
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
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Gplus".to_s, :count => 2
    assert_select "tr>td", :text => "Instagram".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
