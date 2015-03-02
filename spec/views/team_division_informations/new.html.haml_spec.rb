require 'rails_helper'

RSpec.describe "team_division_informations/new", :type => :view do
  before(:each) do
    assign(:team_division_information, TeamDivisionInformation.new(
      :division_id => 1,
      :team_id => 1,
      :name => "MyString",
      :organization => "MyString",
      :high => 1,
      :qp => 1,
      :rp => 1,
      :qual_wins => 1,
      :qual_losses => 1,
      :qual_ties => 1,
      :elim_wins => 1,
      :elim_losses => 1,
      :elim_ties => 1
    ))
  end

  it "renders new team_division_information form" do
    render

    assert_select "form[action=?][method=?]", team_division_informations_path, "post" do

      assert_select "input#team_division_information_division_id[name=?]", "team_division_information[division_id]"

      assert_select "input#team_division_information_team_id[name=?]", "team_division_information[team_id]"

      assert_select "input#team_division_information_name[name=?]", "team_division_information[name]"

      assert_select "input#team_division_information_organization[name=?]", "team_division_information[organization]"

      assert_select "input#team_division_information_high[name=?]", "team_division_information[high]"

      assert_select "input#team_division_information_qp[name=?]", "team_division_information[qp]"

      assert_select "input#team_division_information_rp[name=?]", "team_division_information[rp]"

      assert_select "input#team_division_information_qual_wins[name=?]", "team_division_information[qual_wins]"

      assert_select "input#team_division_information_qual_losses[name=?]", "team_division_information[qual_losses]"

      assert_select "input#team_division_information_qual_ties[name=?]", "team_division_information[qual_ties]"

      assert_select "input#team_division_information_elim_wins[name=?]", "team_division_information[elim_wins]"

      assert_select "input#team_division_information_elim_losses[name=?]", "team_division_information[elim_losses]"

      assert_select "input#team_division_information_elim_ties[name=?]", "team_division_information[elim_ties]"
    end
  end
end
