require 'spec_helper'
describe "The Root Page" do
  it "should be the topics index page" do
    visit "/"
    page.should have_content("Listing topics")
  end
end