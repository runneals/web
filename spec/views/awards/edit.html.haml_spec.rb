require 'rails_helper'

RSpec.describe "awards/edit", :type => :view do
  before(:each) do
    @award = assign(:award, Award.create!(
      :name => "MyString",
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders the edit award form" do
    render

    assert_select "form[action=?][method=?]", award_path(@award), "post" do

      assert_select "input#award_name[name=?]", "award[name]"

      assert_select "textarea#award_description[name=?]", "award[description]"

      assert_select "input#award_order[name=?]", "award[order]"
    end
  end
end
