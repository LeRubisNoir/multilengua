require "spec_helper"

describe VocablesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vocables").to route_to("vocables#index")
    end

    it "routes to #new" do
      expect(:get => "/vocables/new").to route_to("vocables#new")
    end

    it "routes to #show" do
      expect(:get => "/vocables/1").to route_to("vocables#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vocables/1/edit").to route_to("vocables#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vocables").to route_to("vocables#create")
    end

    it "routes to #update" do
      expect(:put => "/vocables/1").to route_to("vocables#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vocables/1").to route_to("vocables#destroy", :id => "1")
    end

  end
end
