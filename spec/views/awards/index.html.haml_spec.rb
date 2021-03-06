require 'rails_helper'

RSpec.describe "awards/index", :type => :view do
  before(:each) do
    assign(:awards, [
      Award.create!(
        :name => "Name",
        :description => "MyText",
        :order => 1
      ),
      Award.create!(
        :name => "Name",
        :description => "MyText",
        :order => 1
      )
    ])
  end

  it "renders a list of awards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
