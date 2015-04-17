require "rails_helper"

RSpec.describe ColetorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coletors").to route_to("coletors#index")
    end

    it "routes to #new" do
      expect(:get => "/coletors/new").to route_to("coletors#new")
    end

    it "routes to #show" do
      expect(:get => "/coletors/1").to route_to("coletors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coletors/1/edit").to route_to("coletors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coletors").to route_to("coletors#create")
    end

    it "routes to #update" do
      expect(:put => "/coletors/1").to route_to("coletors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coletors/1").to route_to("coletors#destroy", :id => "1")
    end

  end
end
