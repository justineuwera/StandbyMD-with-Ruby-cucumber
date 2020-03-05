class MemberDetails
 
    include PageObject
    
    #button(:no, id: 'btnNoEmer', :index => 0)
    #button(:no_button, class: %w[buttone emergency-option disclaimer-option-agree])
    # h3 element for checking if user is on member details form
    h3(:header_member,  class: %w[modal-title])
    # Textfield element for entering member name
    text_field(:member, id: 'Member')
    # div elememt for select organization
    div(:organization, class: %w[col-8], :index => 2)
    #option(:sel, value: '4')
    # div elememt for sub organization
    div(:sub_organization, class: %w[col-8], :index => 3)
    # Text field for policy
    text_field(:policy, id: 'Policy')
    # Text field for case
    text_field(:case, id: 'ClaimRef')
    # Text field for phone
    text_field(:phone, id: 'Phone')
    # Text field for email
    text_field(:email, id: 'memberDetailEmail')
    # Button element for save member details
    button(:save_button, id:'btnSaveMemDet')
    # span elememt for checking if the member is saved
    span(:verification, id: 'memName')
end  