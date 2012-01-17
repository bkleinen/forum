When /^I search for "([^"]*)"$/ do |query|
  visit('/search')
  fill_in('query', :with => query)
  click_button('Search')
end

Then /^the results should be:$/ do |expected_results|
  results = page.all('.result_post').map do |td|
    [td.text]
  end
  # table is a Cucumber::Ast::Table - it has a diff! method
  expected_results.diff!(results)
end

Then /^the topic should be contained in each line:$/ do |expected_results|
    topics = page.all('.result_topic').map do |td|
      td.text
    end
    posts = page.all('.result_post').map do |td|
      td.text
    end
    results = [["Topic", "Post"]] + (0..topics.length-1).map {|i| [topics[i],posts[i]]}
  puts "===== expected"
  puts expected_results.inspect
  puts "===== actual"
  puts results.inspect
  # table is a Cucumber::Ast::Table - it has a diff! method
  expected_results.diff!(results)
end