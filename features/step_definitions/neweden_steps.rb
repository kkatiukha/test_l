Given(/^And I should see statistics table$/) do
  on(NewedenFacesStats_Page).table_stats_element.element.should be_present
end

Given(/^I note the statistic value for "([^"]*)"$/) do |field|
  $last_stats_value = on(NewedenFacesStats_Page).get_value_for field
  puts "Current stats Value for #{field} - #{$last_stats_value}"
end

Given(/^And I vote for "([^"]*)" character$/) do |side|
  sleep 3
  on(NewedenFacesHome_Page).send("#{side}_element").element.click
end

Given(/^And statistic value for "([^"]*)" should be increased by (\d+)$/) do |field, increment|
  current_stats_value = on(NewedenFacesStats_Page).get_value_for field
  puts "Current stats Value for #{field} - #{current_stats_value}"
  (current_stats_value.to_i).should == ($last_stats_value.to_i + increment.to_i)
  $last_stats_value = current_stats_value
end
