require "spec_helper"

describe VocableGroupsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vocable_groups").to route_to("vocable_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/vocable_groups/new").to route_to("vocable_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/vocable_groups/1").to route_to("vocable_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vocable_groups/1/edit").to route_to("vocable_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vocable_groups").to route_to("vocable_groups#create")
    end

    it "routes to #update" do
      expect(:put => "/vocable_groups/1").to route_to("vocable_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vocable_groups/1").to route_to("vocable_groups#destroy", :id => "1")
    end

  end
end
