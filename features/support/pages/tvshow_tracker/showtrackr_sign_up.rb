module ShowTrackr_SignUp
  include PageObject
  
  # Sign Up modal
  div(:popup, :class => "panel-body")
    form(:login_form)   { popup_element.form_element(:name => "loginForm") }
      text_field(:name)       { login_form_element.text_field_element(:name => "displayName") }
      text_field(:email)      { login_form_element.text_field_element(:name => "email") }
      text_field(:password)   { login_form_element.text_field_element(:name => "password") }
      button(:signup_btn)      { login_form_element.button_element(:class => "btn btn-lg btn-block btn-primary") }
      
      link(:terms_and_cond)  { login_form_element.link_element(:text => "terms & conditions") }
      link(:privacy_policy)  { login_form_element.link_element(:text => "privacy policy") }
      link(:log_in_link)     { login_form_element.link_element(:href => "/login") }
      
end
