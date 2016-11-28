Feature: Make new demand
  As a user 
  To find out how to inform a new problem 
  I would like to see the information on what should I do 
  
Scenario: User can see the info  
    Given I am on the o-buraco home page
    When I click on "Não achei o meu problema!"
    Then I should see the information that I need