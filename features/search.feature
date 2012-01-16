Feature: Search
  Scenario: Find Posts by content
    Given a User has posted the following posts:
       | About Cucumber |
       | How to test a web application |
       | Behaviour Driven Design vs. Test Driven Design |
       | about the Gerkhin Language |
    When I search for "test"
    Then the results should be:
      | How to test a web application |
      | Behaviour Driven Design vs. Test Driven Design |
		
