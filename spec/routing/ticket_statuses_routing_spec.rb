require "spec_helper"

describe TicketStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/ticket_statuses").should route_to("ticket_statuses#index")
    end

    it "routes to #new" do
      get("/ticket_statuses/new").should route_to("ticket_statuses#new")
    end

    it "routes to #show" do
      get("/ticket_statuses/1").should route_to("ticket_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ticket_statuses/1/edit").should route_to("ticket_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ticket_statuses").should route_to("ticket_statuses#create")
    end

    it "routes to #update" do
      put("/ticket_statuses/1").should route_to("ticket_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ticket_statuses/1").should route_to("ticket_statuses#destroy", :id => "1")
    end

  end
end
