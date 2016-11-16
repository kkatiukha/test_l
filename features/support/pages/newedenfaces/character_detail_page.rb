require_relative 'neweden_header'

class NewedenFacesCharacterDetail_Page
  include PageObject
  include RSpec::Matchers
  include NewedenFaces_Header
  
  div(:container, :class => "container")
    link(:profile_img)  { container_element.link_element(:class => "magnific-popup") }
    div(:mfp_content)   { container_element.link_element(:class => "mfp-content") }
      button(:mfp_close)  { mfp_content_element.button_element(:title => "Close (Esc)") }
      img(:mfp_img)       { mfp_content_element.img_element(:class => "mfp-img") }
      
    div(:profile_info)  { container_element.div_element(:class => "profile-info clearfix") }
      button(:report_btn) { profile_info_element.button_element(:text => "Report Character") }
    
    div(:profile_stats)  { container_element.div_element(:class => "profile-stats clearfix") }
    
end
