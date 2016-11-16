require_relative 'showtrackr_header'
require_relative 'showtrackr_sign_in'
require_relative 'showtrackr_sign_up'

class ShowTrackrShowDetail_Page
  include PageObject
  include RSpec::Matchers
  include ShowTrackr_Header
  include ShowTrackr_SignIn
  include ShowTrackr_SignUp
  
  div(:container, :class => "container ng-scope")
    div(:details)   { container_element.div_element(:class => "panel panel-default", index:0) }
      h2(:show_header)          { details_element.h2_element(:class => "media-heading ng-binding") }
      h4(:show_status)          { details_element.h4_element(:xpath => ".//h4[contains(., 'Status:')]/span") }
      link(:login_to_subscribe) { details_element.link_element(:class => "btn btn-block btn-primary") } # gues user 
      button(:subscribe)        { details_element.button_element(:class => "btn btn-block btn-success") } # authenticated not subscribed customer 
      button(:unsubscribe)      { details_element.button_element(:class => "btn btn-block btn-danger") } # authenticated subscribed customer 
    div(:episodes)  { container_element.div_element(:class => "panel panel-default", index:1) }
    
end
