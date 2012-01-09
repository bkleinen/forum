require 'spec_helper'

describe "Posts" do
  context "new page" do
    it "associates a new post with the topic" do
      @topic = Topic.create(:title => "A topic")
      visit new_topic_post_url(@topic)
      fill_in "Title", :with => "This is a new Topic"
      fill_in "Content", :with => "This is the Content"
      click_button "Create Post"
      page.should have_content "This is a new Topic"
      page.should have_content "was successfully created"
      created_post = Post.where(:title => "This is a new Topic").first
      created_post.topic.id.should be @topic.id
    end
  end
end
