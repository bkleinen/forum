require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :content => "Content",
        :answer_to => 1,
        :user_id => 1
      ),
      stub_model(Post,
        :title => "Title",
        :content => "Content",
        :answer_to => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of posts" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Content".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
