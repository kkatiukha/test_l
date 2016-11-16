module ShowTrackr_SignIn
  include PageObject
  
  # Sign In modal
  div(:popup, :class => "panel-body")
    form(:login_form)   { popup_element.form_element(:name => "loginForm") }
      text_field(:email)      { login_form_element.text_field_element(:name => "email") }
      text_field(:password)   { login_form_element.text_field_element(:name => "password") }
      button(:login_btn)      { login_form_element.button_element(:class => "btn btn-lg btn-block btn-success") }
      
      link(:password_forgot)  { login_form_element.link_element(:text => "Forgot your password?") }
      link(:sign_up_link)     { login_form_element.link_element(:href => "/signup") }
      
      button(:fb_signin)      { login_form_element.button_element(:class => "btn btn-lg btn-block btn-facebook") }
      button(:google_signin)  { login_form_element.button_element(:class => "btn btn-lg btn-block btn-google-plus") }
      
      def sign_in username, pwd
        self.email = username
        self.password = pwd
        login_btn
      end
      
end
