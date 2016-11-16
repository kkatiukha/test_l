Feature: Verify Customer is able to submit Free Quote form 

	Scenario: Test the System validetes input parameters of Free Quote form - missing Name field 
		* When I navigate to "http://52.41.129.106/andrewd/homePro_v2/quote.php" url
		* I should see "RECEIVE A FREE QUOTE TODAY" text on my page
		* Then I set "email" field as "test@learnix.com" into Free Quote form 
		* Then I set "phone" field as "567-878-8456" into Free Quote form 
		* Then I set "description" field as "new tile into my kitchen" into Free Quote form 
		* And I submit the Free Quote form 
		* Then I should see "You did not enter a value in Name.  This is a Mandatory field.  Please enter it now." popup message 