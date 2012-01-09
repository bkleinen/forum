require 'spec_helper'

describe "posts/new" do
  before(:each) do
    @topic = assign(:topic, 
      stub_model(Topic,
        :title => "The Topic"
      )
    )
    
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyString",
      :answer_to => 1,
      :user_id => 1,
      :topic => @topic
    ).as_new_record)
  end

  it "renders new post form" do
    render
    
    rendered.should have_selector("form", :action => topic_post_path(@topic.to_param,"something other than nil"), :method => "post") do |form|
      form.should have_selector("input#post_title", :name2 => "post[title]")
      form.should have_selector("input#post_content", :name => "post[content]")
      form.should have_selector("input#post_answer_to", :name => "post[answer_to]")
      form.should have_selector("input#post_user_id", :name => "post[user_id]")
    end
  end
end
