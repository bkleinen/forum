require 'spec_helper'

describe "topics/index" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :title => "Capybaras sind grosse Mehrschweinchen"
      ),
      stub_model(Topic,
        :title => "Capybaras werden auch Wasserschweine genannt"
      )
    ])
  end

  it "renders a list of topics" do
    render
    rendered.should have_content("Capybaras sind grosse Mehrschweinchen")
    rendered.should have_content("Capybaras werden auch Wasserschweine genannt")
  end
end
