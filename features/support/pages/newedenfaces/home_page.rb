require_relative 'neweden_header'

class NewedenFacesHome_Page
  include PageObject
  include RSpec::Matchers
  include NewedenFaces_Header

  page_url(FigNewton.neweden_faces.base)
  
  div(:container, :class => "container")
    div(:left)    { container_element.div_element(:class => "thumbnail fadeInUp animated", index:0) }
    div(:right)   { container_element.div_element(:class => "thumbnail fadeInUp animated", index:1) }
    
end
