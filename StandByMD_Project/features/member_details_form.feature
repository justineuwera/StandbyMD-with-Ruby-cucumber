Feature: Member details form
 Background:
    Given user is logged in stand
    
Scenario: Fill the member details form

  Given user is opened the member details form
  When user fills the required information
  And user submit the required information
  Then the member details data are saved