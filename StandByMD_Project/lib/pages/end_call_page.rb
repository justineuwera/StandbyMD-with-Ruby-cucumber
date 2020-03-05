class EndCall

  include PageObject
 
    #button element for skip the form
    #button(:skip_button, class: %w[bttn-pill bttn-md bttn-primary])
    # h3 element for checking if you are on demographics
    #h3(:demographic_page, 'text': 'Demographics')
    # i element for clicking on phone image
    i(:phone_image, class: %w[fas fa-2x fa-phone-slash])
    # div element for select the reason
    select_list(:end_call_reason, id: 'CareDeclinedSubOptionId',class: %w[form-control])
    #Button for submit the reason
    button(:submit_reason, class: %w[bttn-pill bttn-md bttn-success])
  end