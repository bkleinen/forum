require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyString",
      :answer_to => 1,
      :user_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    rendered.should have_selector("form", :action => post_path(@post), :method => "post") do |form|
      form.should have_selector("input#post_title", :name => "post[title]")
      form.should have_selector("input#post_content", :name => "post[content]")
      form.should have_selector("input#post_answer_to", :name => "post[answer_to]")
      form.should have_selector("input#post_user_id", :name => "post[user_id]")
    end
  end
end
