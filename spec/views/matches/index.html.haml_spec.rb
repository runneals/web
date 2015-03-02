require 'rails_helper'

RSpec.describe "matches/index", :type => :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
        :division_id => 1,
        :name => "Name",
        :type => "Type",
        :r1_team_id => 2,
        :r2_team_id => 3,
        :r3_team_id => 4,
        :b1_team_id => 5,
        :b2_team_id => 6,
        :b3_team_id => 7,
        :scored_red => 8,
        :total_red => 9,
        :scored_blue => 10,
        :total_blue => 11,
        :outcome => "Outcome",
        :video => "Video"
      ),
      Match.create!(
        :division_id => 1,
        :name => "Name",
        :type => "Type",
        :r1_team_id => 2,
        :r2_team_id => 3,
        :r3_team_id => 4,
        :b1_team_id => 5,
        :b2_team_id => 6,
        :b3_team_id => 7,
        :scored_red => 8,
        :total_red => 9,
        :scored_blue => 10,
        :total_blue => 11,
        :outcome => "Outcome",
        :video => "Video"
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => "Outcome".to_s, :count => 2
    assert_select "tr>td", :text => "Video".to_s, :count => 2
  end
end
