require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @topic = assign(:topic, 
      stub_model(Topic,
        :title => "The Topic"
      )
    )
    
    @post = assign(:post, stub_model(Post,
      :title => "A Post Title",
      :content => "Some Post Content",
      :answer_to => 1,
      :user_id => 1,
      :topic => @topic
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should have_content("A Post Title")
    rendered.should have_content("Some Post Content")
  end
end
