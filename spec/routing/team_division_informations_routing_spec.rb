require "rails_helper"

RSpec.describe TeamDivisionInformationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/team_division_informations").to route_to("team_division_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/team_division_informations/new").to route_to("team_division_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/team_division_informations/1").to route_to("team_division_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/team_division_informations/1/edit").to route_to("team_division_informations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/team_division_informations").to route_to("team_division_informations#create")
    end

    it "routes to #update" do
      expect(:put => "/team_division_informations/1").to route_to("team_division_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/team_division_informations/1").to route_to("team_division_informations#destroy", :id => "1")
    end

  end
end
