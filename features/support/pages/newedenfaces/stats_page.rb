require_relative 'neweden_header'

class NewedenFacesStats_Page
  include PageObject
  include RSpec::Matchers
  include NewedenFaces_Header

  page_url("#{FigNewton.neweden_faces.base}/stats")
  
  div(:container, :class => "container")
    table(:table_stats)    { container_element.table_element(:class => "table table-striped") }
      
    def get_value_for(row)
      table_stats_element.element.td(:xpath => ".//td[contains(., '#{row}')]/following-sibling::td").text
    end
    
end
