require 'spec_helper'

describe "Topics" do
  describe "GET /topics" do
    it "works! (now write some real specs)" do
      visit topics_path
      page.status_code.should be(200)
    end
  end
  describe "on a single Topic Page" do
    it "there is a button to create a post for this topic"
    it "you get to the create Post page after clicking on that button" 
  end
  
end
