require 'rails_helper'

RSpec.describe "teams/edit", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :website => "MyString",
      :facebook => "MyString",
      :twitter => "MyString",
      :gplus => "MyString",
      :instagram => "MyString",
      :other_names => "MyText"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_city[name=?]", "team[city]"

      assert_select "input#team_state[name=?]", "team[state]"

      assert_select "input#team_country[name=?]", "team[country]"

      assert_select "input#team_website[name=?]", "team[website]"

      assert_select "input#team_facebook[name=?]", "team[facebook]"

      assert_select "input#team_twitter[name=?]", "team[twitter]"

      assert_select "input#team_gplus[name=?]", "team[gplus]"

      assert_select "input#team_instagram[name=?]", "team[instagram]"

      assert_select "textarea#team_other_names[name=?]", "team[other_names]"
    end
  end
end
