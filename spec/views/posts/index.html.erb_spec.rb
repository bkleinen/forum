require 'spec_helper'

describe "posts/index" do
  before(:each) do
    @topic = assign(:topic, 
      stub_model(Topic,
        :title => "The Topic"
      )
    )
    assign(:posts, [
      stub_model(Post,
        :title => "Post 1",
        :content => "Post 1 Content",
        :answer_to => 1,
        :user_id => 1,
        :topic => @topic
      ),
      stub_model(Post,
        :title => "Second Post",
        :content => "Content of Second Post",
        :answer_to => 1,
        :user_id => 1,
        :topic => @topic
      )
    ])
  end

  it "renders a list of posts" do
    render
    rendered.should have_content("Post 1")
    rendered.should have_content("Second Post")
  #  rendered.find(:xpath,'//tr[2]/td').should be "Post 1"
    end
end
