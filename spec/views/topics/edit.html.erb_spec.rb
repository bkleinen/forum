require 'spec_helper'

describe "topics/edit" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :title => "MyString"
    ))
  end

  it "renders the edit topic form" do
    render

    rendered.should have_selector("form", :action => topic_path(@topic), :method => "post") do |form|
      form.should have_selector("input#topic_title", :name => "topic[title]")
    end
  end
end
