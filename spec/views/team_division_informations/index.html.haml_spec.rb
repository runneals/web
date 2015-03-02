require 'rails_helper'

RSpec.describe "team_division_informations/index", :type => :view do
  before(:each) do
    assign(:team_division_informations, [
      TeamDivisionInformation.create!(
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
      ),
      TeamDivisionInformation.create!(
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
      )
    ])
  end

  it "renders a list of team_division_informations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
  end
end
