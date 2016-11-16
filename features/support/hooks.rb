# Actions performed after each scenario
# After do |scenario|
#     if(scenario.failed?)
#     puts "#{scenario.exception.message}"
#     puts "Step Failed. Press return to close browser"
#     STDIN.getc
#   end
#end

# NOTE: order matters here, hooks defined last will be ran first

Before do |scenario|
  @browser.alert.ok if @browser.alert.exists?
end

After do |scenario|
  @browser.alert.ok if @browser.alert.exists?
  if scenario.failed?
    file = "#{scenario.name.gsub(" ","_").gsub(/[^0-9A-Za-z_]/, "")}.png"

    # create directory for images
    Dir.mkdir("./screenshots") unless Dir.exists?("./screenshots")

    # save the file locally
    @browser.screenshot.save("./screenshots/#{file}")

    if AllureCucumber::FeatureTracker.tracker
      # attaches failed test screenshot to Allure reports
      attach_file(file, File.open("./screenshots/#{file}"))
    end
  end
end

After('@showtrackr') do
  step 'I logout from the ShowTrackr app'
end
