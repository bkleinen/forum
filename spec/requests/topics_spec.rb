require 'spec_helper'

describe "Topics" do
  describe "GET /topics" do
    it "works! (now write some real specs)" do
      visit topics_path
      response.status.should be(200)
    end
  end
end
