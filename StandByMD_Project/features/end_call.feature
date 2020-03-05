Feature: End call functionality

Background: 
  Given user is logged in standbyMD

 Scenario: Ending the call

   Given user has an emergency life threatening
   When user chooses to end the call
   And user submits the reason for ending the call
   Then the call is canceled