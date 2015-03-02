require 'rails_helper'

RSpec.describe "award_winners/show", :type => :view do
  before(:each) do
    @award_winner = assign(:award_winner, AwardWinner.create!(
      :event_id => 1,
      :award_id => 2,
      :team_id => 3,
      :place => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
