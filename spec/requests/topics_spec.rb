require 'spec_helper'

describe "Topics" do
  context "index page" do
    it "has a link to New Topic" do
      visit topics_path
      click_link "New Topic"
     page.should have_content("New topic")
    end
  end
  context "new page" do
    it "creates a topic" do
      visit new_topic_path
      fill_in "Title", :with => "This is a new Topic"
      click_button "Create Topic"
      page.should have_content "This is a new Topic"
      page.should have_content "was successfully created"
    end
  end
  describe "on a single Topic Page" do
    before(:each) do
      @topic = Topic.create(:title => 'An example Topic')
    end
    it "there is a link to create a post for this topic" do
      visit topic_path(@topic)
      page.should have_link "Create new Post"
    end
    it "you get to the create Post page after clicking on that button" do
      visit topic_path(@topic)
      click_link "Create new Post"
      page.should have_content "New post"
    end
  end
end
