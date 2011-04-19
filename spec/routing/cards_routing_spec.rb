require "spec_helper"

describe CardsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/cards" }.should route_to(:controller => "cards", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/cards/new" }.should route_to(:controller => "cards", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/cards/1" }.should route_to(:controller => "cards", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/cards/1/edit" }.should route_to(:controller => "cards", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/cards" }.should route_to(:controller => "cards", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/cards/1" }.should route_to(:controller => "cards", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/cards/1" }.should route_to(:controller => "cards", :action => "destroy", :id => "1")
    end

  end
end
