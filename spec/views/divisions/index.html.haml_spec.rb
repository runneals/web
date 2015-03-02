require 'rails_helper'

RSpec.describe "divisions/index", :type => :view do
  before(:each) do
    assign(:divisions, [
      Division.create!(
        :event_id => 1,
        :division_uuid => "Division Uuid",
        :name => "Name",
        :match_count => 2,
        :team_count => 3,
        :high_total => 4,
        :high_scored => 5,
        :average_total => "9.99",
        :average_scored => "9.99",
        :red_wins => 6,
        :blue_wins => 7,
        :ties => 8,
        :average_winning_total => "9.99",
        :average_losing_total => "9.99",
        :average_winning_scored => "9.99",
        :average_losing_scored => "9.99"
      ),
      Division.create!(
        :event_id => 1,
        :division_uuid => "Division Uuid",
        :name => "Name",
        :match_count => 2,
        :team_count => 3,
        :high_total => 4,
        :high_scored => 5,
        :average_total => "9.99",
        :average_scored => "9.99",
        :red_wins => 6,
        :blue_wins => 7,
        :ties => 8,
        :average_winning_total => "9.99",
        :average_losing_total => "9.99",
        :average_winning_scored => "9.99",
        :average_losing_scored => "9.99"
      )
    ])
  end

  it "renders a list of divisions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Division Uuid".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
