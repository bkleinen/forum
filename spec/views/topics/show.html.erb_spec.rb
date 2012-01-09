require 'spec_helper'

describe "topics/show" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :title => "Title"
    ))
  end
  #capybara
  it "renders attributes in <p>" do
    render
    rendered.should have_content("Title".to_s)
  end
end
