require_relative 'homepro_header'

class Order_Page
  include PageObject
  include RSpec::Matchers
  include GeneralMethods
  include HomePro_Header

  page_url("#{FigNewton.home_pro.base}/order.php")
  
  # Page Content element
  div(:content, :id => "content")
    
    div(:case)       { content_element.div_element(:id => "case") }
    
    form(:contact)   { content_element.form_element(:name => "schedule") }
      select_list(:job_type)    { contact_element.select_list_element(:name => "job_type") }
      text_field(:first_name)   { contact_element.text_field_element(:name => "first_name") }
      text_field(:last_name)    { contact_element.text_field_element(:name => "last_name") }
      text_field(:phone)        { contact_element.text_field_element(:name => "phone") }
      text_field(:altphone)     { contact_element.text_field_element(:name => "altphone") }
      text_field(:email)        { contact_element.text_field_element(:name => "email") }
      text_field(:zipcode)      { contact_element.text_field_element(:name => "zipcode") }
      text_area(:comments)     { contact_element.text_area_element(:name => "comments") }
      checkbox(:subscription)   { contact_element.checkbox_element(:name => "subscription") }
      button(:submit)           { contact_element.button_element(:value => "Schedule My consultation") }
  
end
