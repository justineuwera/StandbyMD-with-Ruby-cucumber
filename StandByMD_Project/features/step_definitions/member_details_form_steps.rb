require 'pages/login_client_page.rb'
require 'pages/member_details_form_page.rb'

Given(/^user is logged in stand$/) do
  steps %(
    Given user goes to standby login page
    When user chooses client sign in
    And user enters valid credentials
    And user submit valid credentials
    Then standby platform is opened 
  )
end
Given(/^user is opened the member details form$/) do
  # checking if user is on member details form
  @details = MemberDetails.new(@browser)
  @detail = YesNoButton.new(@browser)
  #@details.icon_member_element.click
  @detail.no_emergency_element.click
  sleep(4)
  @detail.agree_button_element.click
  #@heading = @details.header_member_element.text
  #puts(@heading)
  #@expect_message = 'Member Details'
  #expect(@heading).to eq(@expect_message)
  @details.header_member_element.wait_until(&:present?)
end
When(/^user fills the required information$/) do
  # add member
  @details.member = 'Justine'
  # keep the name
  @keep_name = @details.member
  puts(@keep_name)
  sleep(2)
  # select Organization
  @details.organization_element.click
  @browser.option(:value => "4").click
  # select Sub_organization
  @details.sub_organization_element.click
  sleep(5)
  @browser.option(:value => "11").click
  # Add Policy
  sleep(2)
  @details.policy = 'Cabebe123'
  # Add case
  sleep(2)
  @details.case = 'Jojo12344'
  # Add Phone
  sleep(2)
  @details.phone ='033445667'
  #Add email
  sleep(2)
  @details.email = 'uwera@gmail.com'
end
And(/^user submit the required information$/) do
  @details.save_button_element.click
end
Then(/^the member details data are saved$/) do
  #@expect_name= @details.verification_element.text
  #expect(@expect_name).to eq(@keep_name)
  #@details.verification_element.wait_until(@browser.execute_script("return document.readyState === 'complete'") == 1) 
  #@expect_name= @details.verification_element.text
  # expect(@keep_name).to eq(@expect_name)
end