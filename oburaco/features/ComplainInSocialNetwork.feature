Feature: Complain in social networks

As a citizen
I would like to publicly complain about a problem already registered
To increase pressure and visibility on it

Scenario: Try to share a claim on facebook (happy path)
	    Given I am on one O-buraco é mais em baixo claim's page
		Then I should see a "Share" facebook button
		And I press the "Share" button
		Then should appears a facebook share pop-up 
		When I confirm in this pop-up
		Then the claim is shared on my facebook feed
		
