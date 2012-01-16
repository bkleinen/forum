Given /^a Topic contains the following posts:$/ do |posts|
    # table is a Cucumber::Ast::Table
    Post.create(posts.hashes)
end