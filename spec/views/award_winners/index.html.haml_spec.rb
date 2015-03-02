require 'rails_helper'

RSpec.describe "award_winners/index", :type => :view do
  before(:each) do
    assign(:award_winners, [
      AwardWinner.create!(
        :event_id => 1,
        :award_id => 2,
        :team_id => 3,
        :place => 4
      ),
      AwardWinner.create!(
        :event_id => 1,
        :award_id => 2,
        :team_id => 3,
        :place => 4
      )
    ])
  end

  it "renders a list of award_winners" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
