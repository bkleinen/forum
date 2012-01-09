require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyString",
      :answer_to => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new post form" do
    render

    rendered.should have_selector("form", :action => posts_path, :method => "post") do |form|
      form.should have_selector("input#post_title", :name => "post[title]")
      form.should have_selector("input#post_content", :name => "post[content]")
      form.should have_selector("input#post_answer_to", :name => "post[answer_to]")
      form.should have_selector("input#post_user_id", :name => "post[user_id]")
    end
  end
end
