Given /^a Topic contains the following posts:$/ do |posts|
    # table is a Cucumber::Ast::Table
    topic = Topic.create(:title => "A Topic")
    pimped_hashes = posts.hashes.map do |param_hash| 
      param_hash.merge({:topic => topic})
    end
    Post.create(pimped_hashes)
end
Given /^a Topic "([^"]*)" that contains the following posts:$/ do |topic_title, posts|
    topic = Topic.create(:title => topic_title)
    pimped_hashes = posts.hashes.map do |param_hash| 
      param_hash.merge({:topic => topic})
    end
    Post.create(pimped_hashes)
end