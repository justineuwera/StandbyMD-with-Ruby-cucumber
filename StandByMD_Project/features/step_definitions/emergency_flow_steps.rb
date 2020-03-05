require 'pages/login_client_page.rb'
require 'pages/Yes_No_page.rb'
require 'pages/emergency_flow_page.rb'
require 'pages/member_details_form_page.rb'


Given(/^user is on standbyMD page$/) do
  steps %(
    Given user goes to standby login page
    When user chooses client sign in
    And user enters valid credentials
    And user submit valid credentials
    Then standby platform is opened 
  )
end

Given("user has emergency life threatening") do 
  @emergency = EmergencyFlow.new(@browser)
  @yesno = YesNoButton.new(@browser)
  # Click on fisrt yes
  @yesno.yes_emergency_element.click
  # Click on second yes
  sleep(5)
  @yesno.yes_yes_emergency_element.click
end
When("a user searches his location") do
  # searching location
  @emergency.location_element.click
  @emergency.location_element.value= 'Kigali convention center'
  # click on the next button
  sleep(5)
  @emergency.next_button_element.click
end
And("user chooses the nearest hospital") do
  # choosing the nearesr hospital
  @emergency.nearest_hospital_element.click
  # click on next button
  @emergency.button_next_element.click
end
And("user submit required information") do
  # click on submit request
  @emergency.submit_element.click
  # click on Ok button
  sleep(5)
  @emergency.ok_button_element.click

  steps %(
    Given user is opened the member details form
    When user fills the required information
    And user submit the required information
    Then the member details data are saved
    )
end
Then("the request is submitted successsfully") do
 
end