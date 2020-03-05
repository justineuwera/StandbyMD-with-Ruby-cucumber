require 'pages/login_client_page.rb'
require 'pages/header_page.rb'


Given("user goes to standby login page") do 
  # Enter URL of StandbyMD
  @browser.goto('https://standbymd-qa3.globalexcel.com/')
  # Maximize the browser
  @browser.window.maximize
  @login_standby = LoginStandbyMD.new(@browser)
  @header= HeaderPage.new(@browser)
  # verify if user is on StandbyMD
  @login_standby.logo_element.wait_until(&:present?)
end
When ("user chooses client sign in") do
  # Click on Client sign in
  @login_standby.client_signin_element.click
end
And("user enters valid credentials") do
  # Enter email
  @login_standby.email = 'qa3@globalexcel.com'
  # Enter password
  @login_standby.password = 'Mur@hoP@$$'
end
And("user submit valid credentials") do
  # Click on Sign in button
  @login_standby.sign_in_element.click
  # Wait until the page is loaded
  until @header.welcome_message_element.exists? do sleep 1 end
  # Keep the message element
  @message = @header.welcome_message_element.text
  sleep(5)
  # Take the first word on the welcome message
  @first = @message.split()
  @welcome = @first[0] 
  puts(@welcome)
  # Keep the heading content
  @heading = @header.heading_element.text
  puts(@heading)
  # Check the heading and take the second name
  @output = @heading.split()
  @second = @output[1]
end
Then("standby platform is opened") do
 @message= "Welcome " + @second
 @welcome_message= @welcome + " " + @second
 expect(@message).to eq(@welcome_message)
end