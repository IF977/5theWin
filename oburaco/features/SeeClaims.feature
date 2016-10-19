Feature: User can see the citizens claims 

As a citizen
I want to see in the map the registered claims of citizens
So that I can know the problem's relevance 

Background: Start from the home page
 	Given I am on the Oburacoémaisembaixo home page
	Then I should see a map with the claims' markers and "Search your adress to see the claims around you!"
	
Scenario: Try to see the problems in my neighborhood 
	When I fill "Search adress" within "My adress"
	And I press "Search adress!!"
	Then I should be on the Oburacoémaisembaixo home page
	And I should see "My adress" on the map with the claims' markers around
	When I press any claim's markers
	Then I see the claim's information   