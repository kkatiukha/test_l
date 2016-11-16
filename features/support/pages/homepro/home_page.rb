require_relative 'homepro_header'

class HomeProHome_Page
  include PageObject
  include RSpec::Matchers
  include HomePro_Header

  page_url("#{FigNewton.home_pro.base}/index.php")
  
  # Page Content element
  div(:content, :id => "content")
  
  
end
