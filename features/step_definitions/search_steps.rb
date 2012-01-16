When /^I search for "([^"]*)"$/ do |query|
  visit('/search')
  fill_in('query', :with => query)
  click_button('Search')
end

Then /^the results should be:$/ do |expected_results|
  results = page.all('ol.results li').map do |li|
    [li.text]
  end
  puts " ==== currently in results:"
  # puts results.join("\n")
  # table is a Cucumber::Ast::Table - it has a diff! method
  puts results.inspect
  puts expected_results.inspect
  expected_results.diff!(results)
  pending # express the regexp above with the code you wish you had
end