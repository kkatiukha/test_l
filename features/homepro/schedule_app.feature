Feature: Verify Guest Customer is able to submit a Schedule an Appointment form
  
  Background: 
    * When I visit "HomeProHome_Page"
    
    Scenario: Test the Guest Customer is able to navigate to the Order page from the Home page
      * When I navigate to "Schedule an appointment"
      * Then I should be on the "Order_Page" page
    
    Scenario: Test the Guest Customer is able to see all the elements on the Order page
      * When I navigate to "Schedule an appointment"
      * Then I should be on the "Order_Page" page
      * I verify all page elements for the "Order_Page" page
  
    Scenario: Test the Guest Customer is able to submit the form and see Success message 
      * When I navigate to "Schedule an appointment"
      * Then I should be on the "Order_Page" page
      * When I fill the schedule appointment form with the following info:
        | job_type        | Decorating        |
        | first_name      | John              |        
        | last_name       | Johnson           |
        | phone           | 546-787-9898      |
        | altphone        | 344-657-2345      |
        | email           | john@johnson.com  |
        | zipcode         | 20001             |
        | comments        | Need an update    |
        | subscription    | false             |
      * And I submit the schedule appointment form
      * Then I should see "Your Information has been sent to HomePro. You will be contacted within 24 hours. Thank you!" success message
