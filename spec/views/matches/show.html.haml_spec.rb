require 'rails_helper'

RSpec.describe "matches/show", :type => :view do
  before(:each) do
    @match = assign(:match, Match.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/Outcome/)
    expect(rendered).to match(/Video/)
  end
end
