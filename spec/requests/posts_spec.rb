require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      visit posts_path
      page.status_code.should be(200)
    end
  end
end
