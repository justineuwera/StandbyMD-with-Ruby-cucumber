class YesNoButton
 
    include PageObject
 
    # Button element for yes
    button(:yes_emergency,  id: 'btnYesEmer', :index => 0)
    #Button element for the next  yes
    button(:yes_yes_emergency, class: %w[buttone emergency-option er-option-true])
    # Button element for no
    button(:no_emergency, id: 'btnNoEmer', :index => 0)
    #check if you are on disclaimer page
    h2(:disclaimer, id: 'welcome_message')
    # Button element for agree
    button(:agree_button, class: %w[buttone emergency-option disclaimer-option-agree])
end
