Feature: Add coontact functionality

Background: 
  Given user is already on standbyMD

 Scenario: Add contact on the StandbyMD

   Given user has the emergency life threatening
   When user wants to add the contact
   And user fill the required information
   And user submits the required information
   Then contact's informations are saved