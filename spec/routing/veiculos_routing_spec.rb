require "rails_helper"

RSpec.describe VeiculosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/veiculos").to route_to("veiculos#index")
    end

    it "routes to #new" do
      expect(:get => "/veiculos/new").to route_to("veiculos#new")
    end

    it "routes to #show" do
      expect(:get => "/veiculos/1").to route_to("veiculos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/veiculos/1/edit").to route_to("veiculos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/veiculos").to route_to("veiculos#create")
    end

    it "routes to #update" do
      expect(:put => "/veiculos/1").to route_to("veiculos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/veiculos/1").to route_to("veiculos#destroy", :id => "1")
    end

  end
end
