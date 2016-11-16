Given /I navigate to "(.*?)"$/ do |link|
  on(HomeProHome_Page).nav_panel_element.element.link(:text => link).click
  sleep 3
end

Given /I fill the schedule appointment form with the following info:$/ do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  on(Order_Page).populate_page_with table.rows_hash
end

Given /And I submit the schedule appointment form$/ do
  on(Order_Page).submit
  sleep 3
end

Given /Then I should see "(.*?)" success message$/ do |msg|
  on(Order_Page).content.should include msg
end