require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :provider => "Provider",
        :uuid => "Uuid",
        :first_name => "First Name",
        :last_name => "Last Name",
        :name => "Name",
        :email => "Email",
        :oauth_token => "Oauth Token",
        :role => 1,
        :email_notifications => false
      ),
      User.create!(
        :provider => "Provider",
        :uuid => "Uuid",
        :first_name => "First Name",
        :last_name => "Last Name",
        :name => "Name",
        :email => "Email",
        :oauth_token => "Oauth Token",
        :role => 1,
        :email_notifications => false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Provider".to_s, :count => 2
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Oauth Token".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
