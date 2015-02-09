require 'rails_helper'

RSpec.describe "seasons/index", :type => :view do
  before(:each) do
    assign(:seasons, [
      Season.create!(
        :year_start => 1,
        :year_end => 2,
        :name => "Name",
        :offseason => false,
        :logo => ""
      ),
      Season.create!(
        :year_start => 1,
        :year_end => 2,
        :name => "Name",
        :offseason => false,
        :logo => ""
      )
    ])
  end

  it "renders a list of seasons" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
