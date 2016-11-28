Feature: Seeing Plataform's Demands
  As a user 
  To see the problems on a certain location
  I would like to see other people demands on that location

Given I am on the o-buraco's home page
Then I should see the map with demands and searchbar
When I fill in the searchbar with a location
Then I should see the location on the map
And that location respective demands
