require 'spec_helper'

describe "topics/show" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
  end
end
