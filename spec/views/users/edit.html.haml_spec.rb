require 'rails_helper'

RSpec.describe "users/edit", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :provider => "MyString",
      :uuid => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :name => "MyString",
      :email => "MyString",
      :oauth_token => "MyString",
      :role => 1,
      :email_notifications => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_provider[name=?]", "user[provider]"

      assert_select "input#user_uuid[name=?]", "user[uuid]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_oauth_token[name=?]", "user[oauth_token]"

      assert_select "input#user_role[name=?]", "user[role]"

      assert_select "input#user_email_notifications[name=?]", "user[email_notifications]"
    end
  end
end
