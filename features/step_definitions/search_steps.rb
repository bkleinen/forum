When /^I search for "([^"]*)"$/ do |query|
  visit('/search')
  fill_in('query', :with => query)
  click_button('Search')
end

Then /^the results should be:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end