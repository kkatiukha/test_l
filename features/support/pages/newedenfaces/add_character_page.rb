require_relative 'neweden_header'

class NewedenFacesAddCharacter_Page
  include PageObject
  include RSpec::Matchers
  include NewedenFaces_Header

  page_url("#{FigNewton.neweden_faces.base}/add")
  
  div(:container, :class => "container")
    div(:animated)    { container_element.div_element(:class => "row flipInX animated") }
      form(:add_character_form)   { animated_element.form_element }
        text_field(:charecter_name) { add_charecter_form_element.text_field_element(:class => "form-control") }
        radio(:female)              { add_charecter_form_element.radio_element(:id => "female") }
        radio(:male)                { add_charecter_form_element.radio_element(:id => "male") }
        button(:submit)             { add_charecter_form_element.button_element(:class => "btn btn-primary") }
    
end
