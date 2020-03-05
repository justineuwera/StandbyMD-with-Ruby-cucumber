Feature: StandbyMD Login authorization
  Scenario: Log in StandBy as client

    Given user goes to standby login page
    When user chooses client sign in
    And user enters valid credentials
    And user submit valid credentials
    Then standby platform is opened