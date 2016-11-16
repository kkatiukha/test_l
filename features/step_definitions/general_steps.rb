Given(/^I select the "(.*?)" browser$/) do |page_name|
  @current_page.use_certain_browser(page_name)
end

Given(/^I resize the browser to "(.*?)" width and "(.*?)" height$/) do |width, height|
  @browser.driver.manage.window.resize_to(width.to_i, height.to_i)
end

Given /I take a screenshot$/ do
  @browser.driver.save_screenshot('screen.png')
end

Given /I visit "(.*?)"$/ do |page|
  on(page).goto
end

Given(/^I navigate to "([^"]*)" url$/) do |url|
  @browser.goto url
end

Given /I should be on the "(.*?)" page$/ do |type|
  on(type) do |page|
    expect(page.current_url).to eq(page.page_url_value)
  end
end

Given(/^The url should end with "([^"]*)"$/) do |end_url|
  expect(@browser.url).to end_with(end_url)
end

Given(/^I should be on the "(.*?)" title page$/) do |title|
  Watir::Wait.until { @browser.title == title }
  @browser.title.should == title
end

Given /I verify all page elements for the "(.*?)" page$/ do |page|
  on(page).check_all_elements
end
       
Given /I should see "(.*?)" (?:button|icon|element) on the "(.*?)" page$/ do |element, page|
  on(page).send("#{element}_element").element.should be_present
end

Given(/^I get the current screen size$/) do
  @screen_width = @browser.execute_script("return screen.width;")
  @screen_height = @browser.execute_script("return screen.height;")
  puts "current screen_width - #{@screen_width}"
  puts "current screen_height - #{@screen_height}"
end

Given(/^I get the current browser size$/) do
  @browser_size = @browser.driver.manage.window.size
  puts "current browser size - #{@browser_size}"
end

Given(/^I get browser info$/) do
  puts @browser.execute_script("return navigator.userAgent;")
end

Given(/^I resize the browser to the current screen size and moove it to the upper left corner$/) do
  @browser.driver.manage.window.resize_to(@screen_width,@screen_height)
  @browser.driver.manage.window.move_to(0,0)
end

Given(/^I should be navigated to "([^"]*)"$/) do |url|
  if @browser.windows.size == 1
    @browser.windows.last.url.should == url
    puts @browser.windows.last.url
    sleep 3; @browser.back
  elsif @browser.windows.size > 1
    @browser.windows.last.url.should == url
    puts @browser.windows.last.url
    @browser.windows.last.close if @browser.windows.last.exists?
    sleep 3; @browser.windows.first.use; sleep 2
  else
    raise ArgumentError.new("ERROR: wrong no of open browser windows")
  end
end

Given(/^I click Back browser button$/) do
  @browser.back
end

Given(/^When I delete browser cookies$/) do
  @browser.cookies.clear
end

Given(/^And I refresh the browser$/) do
  @browser.refresh
end

When /I press on "([^"]*)" (?:button|icon|element) on "([^"]*)" page$/ do |button, page|
  b = on(page).send("#{button}_element")
  b.element.wait_until_present
  b.element.fire_event :click
  # on(page).send(button)
  sleep 5
end

Given(/^I wait for (\d+) seconds$/) do |seconds|
  sleep seconds.to_i
end

Given /I am an Authenticated "([^"]*)" customer$/ do |app|
  case app
  when "ShowTrackr"
    on(ShowTrackrHome_Page) do |page|
      page.goto
      page.login_link
      Watir::Wait.until { page.login_form? }
      page.sign_in FigNewton.tvshow_tracker.username, FigNewton.tvshow_tracker.password
      Watir::Wait.until { page.login_name? }
      page.login_name.should include(FigNewton.tvshow_tracker.username)
    end
  else
    raise "Don't know this app"
  end
end