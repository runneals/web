require 'rails_helper'

RSpec.describe "awards/show", :type => :view do
  before(:each) do
    @award = assign(:award, Award.create!(
      :name => "Name",
      :description => "MyText",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
