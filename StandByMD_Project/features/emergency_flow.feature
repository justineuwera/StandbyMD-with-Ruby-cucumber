Feature: Emergency flow

Background: 
  Given user is on standbyMD page

Scenario: Take emergency flow

Given user has emergency life threatening
When a user searches his location 
And user chooses the nearest hospital
And user submit required information
Then the request is submitted successsfully