When /^I search for "([^"]*)"$/ do |query|
  visit('/search')
  fill_in('query', :with => query)
  click_button('Search')
end

Then /^the results should be:$/ do |expected_results|
  results = page.all('ol.results li').map do |li|
    [li.text]
  end
  # table is a Cucumber::Ast::Table - it has a diff! method
  expected_results.diff!(results)
end