require 'spec_helper'

describe "topics/index" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :title => "Title"
      ),
      stub_model(Topic,
        :title => "Title"
      )
    ])
  end

  it "renders a list of topics" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
  end
end
