require 'rails_helper'

RSpec.describe "award_winners/edit", :type => :view do
  before(:each) do
    @award_winner = assign(:award_winner, AwardWinner.create!(
      :event_id => 1,
      :award_id => 1,
      :team_id => 1,
      :place => 1
    ))
  end

  it "renders the edit award_winner form" do
    render

    assert_select "form[action=?][method=?]", award_winner_path(@award_winner), "post" do

      assert_select "input#award_winner_event_id[name=?]", "award_winner[event_id]"

      assert_select "input#award_winner_award_id[name=?]", "award_winner[award_id]"

      assert_select "input#award_winner_team_id[name=?]", "award_winner[team_id]"

      assert_select "input#award_winner_place[name=?]", "award_winner[place]"
    end
  end
end
