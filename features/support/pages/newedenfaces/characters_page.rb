require_relative 'neweden_header'

class NewedenFacesCharacters_Page
  include PageObject
  include RSpec::Matchers
  include NewedenFaces_Header

  page_url("#{FigNewton.neweden_faces.base}/characters")
  
  div(:container, :class => "container")
    div(:list_group)    { container_element.div_element(:class => "list-group") }
    
end
