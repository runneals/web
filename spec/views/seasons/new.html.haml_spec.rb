require 'rails_helper'

RSpec.describe "seasons/new", :type => :view do
  before(:each) do
    assign(:season, Season.new(
      :year_start => 1,
      :year_end => 1,
      :name => "MyString",
      :offseason => false,
      :logo => ""
    ))
  end

  it "renders new season form" do
    render

    assert_select "form[action=?][method=?]", seasons_path, "post" do

      assert_select "input#season_year_start[name=?]", "season[year_start]"

      assert_select "input#season_year_end[name=?]", "season[year_end]"

      assert_select "input#season_name[name=?]", "season[name]"

      assert_select "input#season_offseason[name=?]", "season[offseason]"

      assert_select "input#season_logo[name=?]", "season[logo]"
    end
  end
end
