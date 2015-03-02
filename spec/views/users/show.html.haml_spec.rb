require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :provider => "Provider",
      :uuid => "Uuid",
      :first_name => "First Name",
      :last_name => "Last Name",
      :name => "Name",
      :email => "Email",
      :oauth_token => "Oauth Token",
      :role => 1,
      :email_notifications => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Provider/)
    expect(rendered).to match(/Uuid/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Oauth Token/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end
