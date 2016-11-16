require_relative 'showtrackr_header'
require_relative 'showtrackr_sign_in'
require_relative 'showtrackr_sign_up'

class ShowTrackrHome_Page
  include PageObject
  include RSpec::Matchers
  include ShowTrackr_Header
  include ShowTrackr_SignIn
  include ShowTrackr_SignUp

  page_url(FigNewton.tvshow_tracker.base)
  
  div(:container, :class => "container")
    unordered_list(:alphabet)     { container_element.unordered_list_element(:class => "alphabet") }
    unordered_list(:genres)       { container_element.unordered_list_element(:class => "genres") }
    
    def filter_by_alphabet(letter)
      alphabet_element.element.span(:text => letter).click
    end
    
    def filter_by_genres(genre)
      genres_element.element.span(:text => genre).click
    end
    
  div(:container_in_scope, :class => "container ng-scope")
    div(:current_scope)         { container_in_scope_element.div_element(:class => "panel-heading ng-binding") }
    text_field(:search_field)   { container_in_scope_element.text_field_element(:class => "search ng-pristine ng-untouched ng-valid") }
    div(:shows_list)            { container_in_scope_element.div_element(:class => "row show-list") }
    
end
