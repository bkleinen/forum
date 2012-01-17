Given /^a Topic contains the following posts:$/ do |posts|
    # table is a Cucumber::Ast::Table
    topic = Topic.create(:title => "A Topic")
    pimped_hashes = posts.hashes.map do |param_hash| 
      param_hash.merge({:topic => topic})
    end
    Post.create(pimped_hashes)
end