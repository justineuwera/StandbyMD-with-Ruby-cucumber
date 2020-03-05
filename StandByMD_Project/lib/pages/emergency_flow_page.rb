class EmergencyFlow
 
    include PageObject
 
    # Button element for yes 
    button(:emergency,  id: 'btnYesEmer', :index => 0)
    #Button element for yes
    button(:emergency_number, class: %w[buttone emergency-option er-option-true])
    # button(:emergency_number, id: 'btnYesEmer', :index => 1)
    #Text field element for seaching location
    text_field(:location, class: %w[form-control])
    #button element for first  next
    button(:next_button, id: 'locationNextStep', :index => 0)
    # span element for choosing the nearest location
    span(:nearest_hospital, class: %w[locAddress], :index => 0)
    #Button element for second next
    button(:button_next, id: 'goSummary')
    # button for submit request
    button(:submit, class: %w[bttn-pill bttn-md bttn-success])
    # button element for opening the form
    button(:ok_button, class: %w[btn btn-info])
    #check a notif message for the logged in user
    span(:confirm_message, class: %w[jconfirm-icon-c])
    # button element for clicking on Done
    button(:done_button, class: %w[btn btn-default])
  end