module ShowTrackr_Header
  include PageObject
  
  # Navigation Bar
  div(:navbar, :class => "navbar navbar-default navbar-static-top ng-scope")
    link(:logo)         { navbar_element.link_element(:class => "navbar-brand") }
    link(:home_link)    { navbar_element.link_element(:href => "/") }
    link(:add_link)     { navbar_element.link_element(:href => "/add") }
    
    # For Gues User only
    link(:login_link)   { navbar_element.link_element(:href => "/login") }
    link(:signup_link)  { navbar_element.link_element(:href => "/signup") }
    
    # For Authenticated Customer only
    list_item(:login_name)    { navbar_element.list_item_element(:class => "navbar-text ng-binding") }
    link(:logout_link)        { navbar_element.link_element(:text => "Logout") }
    
end
