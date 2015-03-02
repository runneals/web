require "rails_helper"

RSpec.describe AwardWinnersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/award_winners").to route_to("award_winners#index")
    end

    it "routes to #new" do
      expect(:get => "/award_winners/new").to route_to("award_winners#new")
    end

    it "routes to #show" do
      expect(:get => "/award_winners/1").to route_to("award_winners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/award_winners/1/edit").to route_to("award_winners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/award_winners").to route_to("award_winners#create")
    end

    it "routes to #update" do
      expect(:put => "/award_winners/1").to route_to("award_winners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/award_winners/1").to route_to("award_winners#destroy", :id => "1")
    end

  end
end
