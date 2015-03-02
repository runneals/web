require 'rails_helper'

RSpec.describe "divisions/new", :type => :view do
  before(:each) do
    assign(:division, Division.new(
      :event_id => 1,
      :division_uuid => "MyString",
      :name => "MyString",
      :match_count => 1,
      :team_count => 1,
      :high_total => 1,
      :high_scored => 1,
      :average_total => "9.99",
      :average_scored => "9.99",
      :red_wins => 1,
      :blue_wins => 1,
      :ties => 1,
      :average_winning_total => "9.99",
      :average_losing_total => "9.99",
      :average_winning_scored => "9.99",
      :average_losing_scored => "9.99"
    ))
  end

  it "renders new division form" do
    render

    assert_select "form[action=?][method=?]", divisions_path, "post" do

      assert_select "input#division_event_id[name=?]", "division[event_id]"

      assert_select "input#division_division_uuid[name=?]", "division[division_uuid]"

      assert_select "input#division_name[name=?]", "division[name]"

      assert_select "input#division_match_count[name=?]", "division[match_count]"

      assert_select "input#division_team_count[name=?]", "division[team_count]"

      assert_select "input#division_high_total[name=?]", "division[high_total]"

      assert_select "input#division_high_scored[name=?]", "division[high_scored]"

      assert_select "input#division_average_total[name=?]", "division[average_total]"

      assert_select "input#division_average_scored[name=?]", "division[average_scored]"

      assert_select "input#division_red_wins[name=?]", "division[red_wins]"

      assert_select "input#division_blue_wins[name=?]", "division[blue_wins]"

      assert_select "input#division_ties[name=?]", "division[ties]"

      assert_select "input#division_average_winning_total[name=?]", "division[average_winning_total]"

      assert_select "input#division_average_losing_total[name=?]", "division[average_losing_total]"

      assert_select "input#division_average_winning_scored[name=?]", "division[average_winning_scored]"

      assert_select "input#division_average_losing_scored[name=?]", "division[average_losing_scored]"
    end
  end
end
