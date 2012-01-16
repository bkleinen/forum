Feature: Search
  Scenario: Find Posts by content
    Given a User has posted the following posts:
       | title | content |
       | About Cucumber | bla bla bla |
       | How to test a web application | bla test bla | 
       | Behaviour Driven Design vs. Test Driven Design | bla bla Test |
       | about the Gerkhin Language | Bla bla bla Test |
    When I search for "test"
    Then the results should be:
      | About Cucumber | bla bla bla |
      | How to test a web application | bla test bla | 
      | Behaviour Driven Design vs. Test Driven Design | bla bla Test |
      | about the Gerkhin Language | Bla bla bla Test |
 		
