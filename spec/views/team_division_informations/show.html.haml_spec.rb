require 'rails_helper'

RSpec.describe "team_division_informations/show", :type => :view do
  before(:each) do
    @team_division_information = assign(:team_division_information, TeamDivisionInformation.create!(
      :division_id => 1,
      :team_id => 2,
      :name => "Name",
      :organization => "Organization",
      :high => 3,
      :qp => 4,
      :rp => 5,
      :qual_wins => 6,
      :qual_losses => 7,
      :qual_ties => 8,
      :elim_wins => 9,
      :elim_losses => 10,
      :elim_ties => 11
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Organization/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
  end
end
