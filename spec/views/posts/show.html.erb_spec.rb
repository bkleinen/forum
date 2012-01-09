require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "Title",
      :content => "Content",
      :answer_to => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("Content".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
  end
end
