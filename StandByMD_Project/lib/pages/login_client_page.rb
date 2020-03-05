 class LoginStandbyMD
 
    include PageObject
 
    #Check if user is on standbyMD home page
    div(:logo,  class: %w[api_container normaltext])
    #Button element for sign in
    button(:client_signin, id: 'SignInWithLogonNameExchange')
    #Text field for email
    text_field(:email, id: 'cred_userid_inputtext')
    #Text field for password
    text_field(:password, id: 'cred_password_inputtext')
    #Button for sign in 
    button(:sign_in, id: 'cred_sign_in_button')
    #check a welcome message for the logged in user
    #h2(:welcome_message, id: 'welcome_message')
    #div(:heading, class: %w[col text-right])
  end