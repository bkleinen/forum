require 'spec_helper'

describe Post do
  it "finds posts with content" do
    Post.create(:title => "find",:content => "contains IT")
    results = Post.containing("IT")
    results.length.should be 1
  end
  it "finds posts with content both in title and in content" do
    Post.create(:title => "find",:content => "contains IT")
    Post.create(:title => "find IT etc",:content => "contains")
    results = Post.containing("IT")
    results.length.should be 2
  end
end
