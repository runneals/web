require 'rails_helper'

RSpec.describe "seasons/show", :type => :view do
  before(:each) do
    @season = assign(:season, Season.create!(
      :year_start => 1,
      :year_end => 2,
      :name => "Name",
      :offseason => false,
      :logo => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
