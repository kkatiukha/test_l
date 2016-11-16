module NewedenFaces_Header
  include PageObject
  
  # Navigation Bar
  div(:navbar, :id => "navbar")
    text_field(:search_input) { navbar_element.text_field_element(:class => "form-control") }
    button(:search_start)     { navbar_element.button_element(:class => "btn btn-default") }
    
    link(:home_link)          { navbar_element.link_element(:href => "/") }
    link(:stats_link)         { navbar_element.link_element(:href => "/stats") }
    list_item(:top_100)       { navbar_element.list_item_element(:xpath => ".//a[contains(., 'Top 100')]/..") }

    def top_100_select(option)
      top_100_element.element.ul(:class => "dropdown-menu").a(:xpath => ".//a[contains(., '/top/#{option.downcase})]")
    end
    
    list_item(:female)  { navbar_element.list_item_element(:xpath => ".//a[contains(., 'Female')]/..") }
    
    def female_select(option)
      female_element.element.ul(:class => "dropdown-menu").a(:xpath => ".//a[contains(., '/female/#{option.downcase})]")
    end
    
    list_item(:male)    { navbar_element.list_item_element(:xpath => ".//a[contains(., 'Male')]/..") }
    
    def male_select(option)
      male_element.element.ul(:class => "dropdown-menu").a(:xpath => ".//a[contains(., '/male/#{option.downcase})]")
    end
    
    link(:add_link)     { navbar_element.link_element(:href => "/add") }

end
