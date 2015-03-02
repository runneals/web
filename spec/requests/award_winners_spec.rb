require 'rails_helper'

RSpec.describe "AwardWinners", :type => :request do
  describe "GET /award_winners" do
    it "works! (now write some real specs)" do
      get award_winners_path
      expect(response).to have_http_status(200)
    end
  end
end
