Feature: Verify Subscription functionality
  
	Scenario: Test the Guest Customer should see "Login To Subscribe" button on the Show detail page
	  * When I visit "ShowTrackrHome_Page"
	  * And I click on 1 show displayed on the filtered content
	  * Then I should be redirected to the Show details page
	  * Then I should see "login_to_subscribe" button on the "ShowTrackrShowDetail_Page" page
	
	@showtrackr
	Scenario: Test the Authenticated Customer can Subscribe to the Show and see the option to Unsubscribe
	  * Given I am an Authenticated "ShowTrackr" customer
	  * When I navigate to "Game of Thrones" Show Detail page
	  * Then I should see "subscribe" button on the "ShowTrackrShowDetail_Page" page
	  * When I press on "subscribe" button on "ShowTrackrShowDetail_Page" page
	  * Then I should see "unsubscribe" button on the "ShowTrackrShowDetail_Page" page
	  * When I press on "unsubscribe" button on "ShowTrackrShowDetail_Page" page
	
	@showtrackr
	Scenario: Test the Authenticated Customer can Unsubscribe from the Show and see the option to Subscribe
	  * Given I am an Authenticated "ShowTrackr" customer
	  * When I navigate to "Breaking Bad" Show Detail page
	  * When I press on "subscribe" button on "ShowTrackrShowDetail_Page" page
	  * When I press on "unsubscribe" button on "ShowTrackrShowDetail_Page" page
	  * Then I should see "subscribe" button on the "ShowTrackrShowDetail_Page" page
	  
	  
	
	  
