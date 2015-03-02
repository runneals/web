require 'rails_helper'

RSpec.describe "awards/new", :type => :view do
  before(:each) do
    assign(:award, Award.new(
      :name => "MyString",
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders new award form" do
    render

    assert_select "form[action=?][method=?]", awards_path, "post" do

      assert_select "input#award_name[name=?]", "award[name]"

      assert_select "textarea#award_description[name=?]", "award[description]"

      assert_select "input#award_order[name=?]", "award[order]"
    end
  end
end
