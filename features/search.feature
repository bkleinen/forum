Feature: Search
  Scenario: Find Posts by content
    Given a Topic contains the following posts:
       | title | content |
       | About Cucumber | bla bla bla |
       | How to test a web application | bla test bla | 
       | Behaviour Driven Design vs. Test Driven Design | bla bla Test |
       | About the Gerkhin Language | Bla bla bla Test |
    When I search for "test"
    Then the results should be:
	  | How to test a web application |
      | Behaviour Driven Design vs. Test Driven Design | 
      | About the Gerkhin Language |
 		
