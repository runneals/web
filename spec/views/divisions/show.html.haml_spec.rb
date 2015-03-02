require 'rails_helper'

RSpec.describe "divisions/show", :type => :view do
  before(:each) do
    @division = assign(:division, Division.create!(
      :event_id => 1,
      :division_uuid => "Division Uuid",
      :name => "Name",
      :match_count => 2,
      :team_count => 3,
      :high_total => 4,
      :high_scored => 5,
      :average_total => "9.99",
      :average_scored => "9.99",
      :red_wins => 6,
      :blue_wins => 7,
      :ties => 8,
      :average_winning_total => "9.99",
      :average_losing_total => "9.99",
      :average_winning_scored => "9.99",
      :average_losing_scored => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Division Uuid/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
