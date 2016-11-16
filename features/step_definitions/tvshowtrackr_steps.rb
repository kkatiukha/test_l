Given(/^And I click on (\d+) show displayed on the filtered content$/) do |index|
  on(ShowTrackrHome_Page).shows_list_element.element.wait_until_present; sleep 7
  on(ShowTrackrHome_Page).shows_list_element.element.div(:class => "fade-repeat col-xs-4 col-md-3 ng-scope", index:(index.to_i - 1)).click
  sleep 3
end

Given(/^When I navigate to "([^"]*)" Show Detail page$/) do |show|
  on(ShowTrackrHome_Page).shows_list_element.element.wait_until_present; sleep 7
  on(ShowTrackrHome_Page).shows_list_element.element.a(:text => show).click
  sleep 3
end

Given(/^Then I should be redirected to the Show details page$/) do
  expect(on(ShowTrackrShowDetail_Page).details?).to be true
  expect(on(ShowTrackrShowDetail_Page).episodes?).to be true
end

Given(/^I logout from the ShowTrackr app$/) do
  on(ShowTrackrHome_Page).logout_link
  sleep 3
end


