require_relative 'showtrackr_header'
require_relative 'showtrackr_sign_in'
require_relative 'showtrackr_sign_up'

class ShowTrackrAddShow_Page
  include PageObject
  include RSpec::Matchers
  include ShowTrackr_Header
  include ShowTrackr_SignIn
  include ShowTrackr_SignUp

  page_url("#{FigNewton.tvshow_tracker.base}/add")
  
  div(:container, :class => "container ng-scope")
    text_field(:show_name)     { container_element.text_field_element(:name => "showName") }
    button(:add_btn)           { container_element.button_element(:class => "btn btn-primary") }
    
end
