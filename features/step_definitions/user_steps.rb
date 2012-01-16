Given /^a User has posted the following posts:$/ do |posts|
    # table is a Cucumber::Ast::Table
    Post.create(posts.hashes)
end