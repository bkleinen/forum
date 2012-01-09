require "spec_helper"

describe PostsController do
  describe "routing" do

    it "routes to #index" do
      get("/topics/1/posts").should route_to("posts#index", :topic_id => "1")
    end

    it "routes to #new" do
      get("/topics/1/posts/new").should route_to("posts#new", :topic_id => "1")
    end

    it "routes to #show" do
      get("/topics/1/posts/1").should route_to("posts#show", :id => "1", :topic_id => "1")
    end

    it "routes to #edit" do
      get("/topics/1/posts/1/edit").should route_to("posts#edit", :id => "1", :topic_id => "1")
    end

    it "routes to #create" do
      post("/topics/1/posts").should route_to("posts#create", :topic_id => "1")
    end

    it "routes to #update" do
      put("/topics/1/posts/1").should route_to("posts#update", :id => "1", :topic_id => "1")
    end

    it "routes to #destroy" do
      delete("/topics/1/posts/1").should route_to("posts#destroy", :id => "1", :topic_id => "1")
    end

  end
end
