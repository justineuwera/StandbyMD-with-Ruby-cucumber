require 'pages/login_client_page.rb'
require 'pages/Yes_No_page.rb'
require 'pages/end_call_page.rb'
require 'securerandom'

Given(/^user is logged in standbyMD$/) do
  steps %(
    Given user goes to standby login page
    When user chooses client sign in
    And user enters valid credentials
    And user submit valid credentials
    Then standby platform is opened 
  )
end

Given(/^user has an emergency life threatening$/) do 
  @yes_no = YesNoButton.new(@browser)
  @yes_no.yes_emergency_element.click
  @yes_no.yes_yes_emergency_element.click
end
When(/^user chooses to end the call$/) do
  @end_call = EndCall.new(@browser)
  @end_call.phone_image_element.click
end
And(/^user submits the reason for ending the call$/) do
  sleep(5)
  @end_call.end_call_reason_element.click
  sleep(5)
  @reason = @end_call.end_call_reason_element.options.to_a.sample.click
  sleep(5)
  #@counter=0
    #while @counter == 0 do
     #@end_call.each do |end_call_reason|
 
        #if (rand() <= 0.01 && @counter < 1) then
          #submit_reason.click
          #@counter += 1
        #end
     #end
    #end
    #sleep(1)
  @end_call.submit_reason_element.click  
end
 # @counter=0
    # while (@counter == 0) do
    #     @end_call.each do |submit_reason_element|
    #                 if (rand() < 0.01 && @counter < 1) then
    #                     submit_reason_element.click
    #                     @counter+=1
    #                 end
    #     end
    # end
    #         sleep(5)

Then(/^the call is canceled$/) do
 steps %(
     Then standby platform is opened
        )
end