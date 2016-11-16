module HomePro_Header
  include PageObject
  
  # Header Element
  div(:header, :id => "header")
    
    # Child of the Header Element - Login form 
    form(:login_form) { header_element.form_element(:name => "form") }
      text_field(:username) { login_form_element.text_field_element(:title => "Enter your Username") } 
      text_field(:password) { login_form_element.text_field_element(:title => "Enter your password") }
      button(:submit)       { login_form_element.button_element(:name => "Submit") }
  
  # Navigation Panel element
  div(:nav_panel, :id => "nav")

end
