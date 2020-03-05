require 'pages/login_client_page.rb'
require 'pages/yes_no_page.rb'
require 'pages/add_contact_page.rb'
require 'securerandom'
# steps for login on StandbyMD
Given(/^user is already on standbyMD$/) do
    steps %(
    Given user goes to standby login page
      When user chooses client sign in
      And user enters valid credentials
      And user submit valid credentials
      Then standby platform is opened
      )
  end
  Given(/^user has the emergency life threatening$/) do
    # Add variable for calling yes_no_page
    @emergency_confirmation = YesNoButton.new(@browser)
    @emergency_confirmation.yes_emergency_element.click
    sleep(3)
    @emergency_confirmation.yes_emergency_element.click
    
  end
 
  When(/^user wants to add the contact$/) do
    @addcontactfunction = AddContact.new(@browser)
    sleep(5)
    @addcontactfunction.add_icon_element.click
    sleep(5) 
    @addcontactfunction.add_contact_title_element.wait_until(&:present?)   
  end
  And(/^user fill the required information$/) do
    @addcontactfunction.type_of_contact_element.click
    sleep(2)
    @addcontactfunction.type_of_contact_element.options.to_a.sample.click
    @addcontactfunction.caller_element.options.to_a.sample
    sleep(3)
    @addcontactfunction.person_title_element.click
    @addcontactfunction.person_title_element.options.to_a.sample.click
    sleep(3)
    @names = SecureRandom.alphanumeric(3)
    @addcontactfunction.first_name = "Firstname"+@names
    @keep_name =  @addcontactfunction.first_name
    sleep(3)
    @number = SecureRandom.random_number(100)
    @newnumber = @number.to_s + @number.to_s + @number.to_s + @number.to_s + @number.to_s + "" 
    sleep(4)
    @addcontactfunction.phone_number = @newnumber
    sleep(4)
    puts(@newnumber)
    @mobile_number = SecureRandom.random_number(100)
    @mobile_n = @mobile_number.to_s + @mobile_number.to_s + @mobile_number.to_s + @mobile_number.to_s + @mobile_number.to_s + "" 
    sleep(4)
    @addcontactfunction.mobile = @mobile_n
    sleep(4)
    puts(@mobile_n)
    @fax_number = SecureRandom.random_number(100)
    @fax_n = @fax_number.to_s + @fax_number.to_s + "" 
    sleep(4)
    @addcontactfunction.fax = @fax_n
    sleep(4)
    puts(@fax_n)
    @email_addre = SecureRandom.alphanumeric(5)
    @mail_ad = @email_addre + "@gmail.com"
    sleep(4)
    @addcontactfunction.email_address = @mail_ad
    sleep(4)
    puts(@mail_ad)
    @addcontactfunction.address = "Kigali"
    sleep(4)
    puts(@addcontactfunction.address)
    @addcontactfunction.country ="Rwanda"
    sleep(4)
    @addcontactfunction.state_element.click
    sleep(5)
    @addcontactfunction.state_element.options.to_a.sample.click
    until @addcontactfunction.state_element.exists? do sleep 25 end
    sleep(10)
    @addcontactfunction.city_element.click
    @addcontactfunction.city_element.options.to_a.sample.click
    until @addcontactfunction.city_element.exists? do sleep 25 end
    sleep(10)
    @postal_code_number = SecureRandom.random_number(100)
    @postal_code_n = @postal_code_number.to_s + @postal_code_number.to_s + "" 
    sleep(4)
    @addcontactfunction.postal_code = @postal_code_n
    sleep(4)
    puts(@postal_code_n)
    @attention_message = SecureRandom.alphanumeric(10)
    @attention_m = "Hello" + @attention_message
    sleep(4)
    @addcontactfunction.attention = @attention_m
    sleep(4)
    puts(@attention_m)
    @reference_message = SecureRandom.alphanumeric(4)
    @reference_m = "reference" + @reference_message
    sleep(4)
    @addcontactfunction.reference = @reference_m
    sleep(4)
    puts(@reference_m)
    sleep(4)
    @remark_message = SecureRandom.alphanumeric(4)
    @remark_m = "remark" + @remark_message
    sleep(4)
    @addcontactfunction.remark = @remark_m
    sleep(4)
    puts(@remark_m)
  end
  And(/^user submits the required information$/) do
    @addcontactfunction.save_changes_element.click
    sleep(5) 
  end
  Then(/^contact's informations are saved$/) do
    @expect_name= @addcontactfunction.verification_m_element.text
    sleep(5)
    expect(@keep_name).to eq(@expect_name)
  end