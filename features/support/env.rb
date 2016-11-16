require_relative "dependencies"

FigNewton.load("staging.yml")
$env = "DEV"

browser = Watir::Browser.new :chrome
browser.driver.manage.window.maximize

Before do
  browser.cookies.clear
  @browser = browser
end

at_exit do
  browser.close
end

puts "=" * 25
puts "Environment: Dev"
puts "Browser: Chrome"
puts "=" * 25

World(PageObject::PageFactory)
