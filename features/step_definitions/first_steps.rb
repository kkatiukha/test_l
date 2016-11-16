Given(/^When I navigate to "([^"]*)" url$/) do |uri|
  @browser.goto uri
end

Given(/^I should see "([^"]*)" text on my page$/) do |text|
  @browser.element(:text => text).should be_present
end

Given(/^Then I set "([^"]*)" field as "([^"]*)" into Free Quote form$/) do |field, value|
  case field 
  when "Name"
    @browser.text_field(:name => "first_name").set value
  when "Email"
    @browser.text_field(:name => "email").set value
  when "Phone"
    @browser.text_field(:name => "phone").set value
  when "Description"
    @browser.textarea(:name => "comments").set value
  end
end

Given(/^And I submit the Free Quote form$/) do
  @browser.button(:value => "Send").click
end

Given(/^Then I should see "([^"]*)" popup message$/) do |msg|
  @browser.alert.should be_present
  @browser.alert.text.should include(msg)
end
