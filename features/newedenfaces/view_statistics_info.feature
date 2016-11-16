Feature: Verify User is able to view Neweden Faces Statistic Information
  
  Background: 
    * When I visit "NewedenFacesStats_Page"
    
    Scenario: Test the Customer is able to see the Statistics table
      * Then I should be on the "NewedenFacesStats_Page" page
	  * And I should see statistics table 
	  
    Scenario: Test the Customer is able to see an updated info in the Statistics table - Total votes cast case
      * Then I should be on the "NewedenFacesStats_Page" page
      * I note the statistic value for "Total votes cast"
	  * Then I visit "NewedenFacesHome_Page"
	  * And I vote for "left" character
	  * Then I visit "NewedenFacesStats_Page"
	  * And statistic value for "Total votes cast" should be increased by 1
	  
