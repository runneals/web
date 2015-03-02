require 'rails_helper'

RSpec.describe "matches/new", :type => :view do
  before(:each) do
    assign(:match, Match.new(
      :division_id => 1,
      :name => "MyString",
      :type => "",
      :r1_team_id => 1,
      :r2_team_id => 1,
      :r3_team_id => 1,
      :b1_team_id => 1,
      :b2_team_id => 1,
      :b3_team_id => 1,
      :scored_red => 1,
      :total_red => 1,
      :scored_blue => 1,
      :total_blue => 1,
      :outcome => "MyString",
      :video => "MyString"
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_division_id[name=?]", "match[division_id]"

      assert_select "input#match_name[name=?]", "match[name]"

      assert_select "input#match_type[name=?]", "match[type]"

      assert_select "input#match_r1_team_id[name=?]", "match[r1_team_id]"

      assert_select "input#match_r2_team_id[name=?]", "match[r2_team_id]"

      assert_select "input#match_r3_team_id[name=?]", "match[r3_team_id]"

      assert_select "input#match_b1_team_id[name=?]", "match[b1_team_id]"

      assert_select "input#match_b2_team_id[name=?]", "match[b2_team_id]"

      assert_select "input#match_b3_team_id[name=?]", "match[b3_team_id]"

      assert_select "input#match_scored_red[name=?]", "match[scored_red]"

      assert_select "input#match_total_red[name=?]", "match[total_red]"

      assert_select "input#match_scored_blue[name=?]", "match[scored_blue]"

      assert_select "input#match_total_blue[name=?]", "match[total_blue]"

      assert_select "input#match_outcome[name=?]", "match[outcome]"

      assert_select "input#match_video[name=?]", "match[video]"
    end
  end
end
