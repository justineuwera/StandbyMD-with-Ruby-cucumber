class AddContact

  include PageObject
  
  # i element for clicking on + button
  i(:add_icon, class: %w[fas fa-plus-circle])
  # h5 element checking the contact title
  h5(:add_contact_title, class: %w[modal-title])
  #i(:add_icon, class: 'fas' , :index => 6)
  # select list element for select type
  # select_list(:patient_type, class: %w[form-control], :index => 1)
  select_list(:type_of_contact, id: 'ContactIdentification')
  # radio element for checking calller
  radio(:caller, name: 'opCallerNo')
  # select list element for person title
  select_list(:person_title, id: 'Title', class: 'form-control')
  # text field element for name
  text_field(:first_name, id: 'FirstName')
  # text field element for phone_number
  text_field(:phone_number, id: 'contactPhone', name: 'Phone')
  # Text field element for mobile
  text_field(:mobile, id: 'Mobile', name: 'Mobile')
  # Text field element for Fax
  text_field(:fax, id: 'Fax', name: 'Fax')
  # Text field element for email address
  text_field(:email_address, id: 'EMail')
  # Text field element for address
  text_field(:address, id: 'Address')
  # Select list element for country
  select_list(:country, id: 'Country')
  # Select list element for city
  select_list(:city, id: 'City')
  # select list element for state
  select_list(:state, id: 'State')
  # Text field element for postal code
  text_field(:postal_code, id: 'Zip')
  # text field element for attention
  text_field(:attention, id: 'Attention')
  # Text field element for reference
  text_field(:reference, id: 'Reference', name: 'Reference')
  # Text area element for remark
  text_area(:remark, id: 'Remark', name: 'Remark')
  # button element for save button
  button(:save_changes, class: %w[bttn-pill bttn-md bttn-success])
  # span elememt for checking if the member is saved
  span(:verification_m, id: 'memName', :index => 0)
end