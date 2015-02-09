require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :season_id => 1,
      :name => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :type => ""
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_season_id[name=?]", "event[season_id]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_city[name=?]", "event[city]"

      assert_select "input#event_state[name=?]", "event[state]"

      assert_select "input#event_country[name=?]", "event[country]"

      assert_select "input#event_type[name=?]", "event[type]"
    end
  end
end
