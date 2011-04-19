Feature: Create a new card
	As a user
	I want to create a new card
	So I can manage all cards

	Scenario: Create a new card
		Given I am on the home page
		When I follow "New Card"
		Then I should be on the new card page
		When I fill in "Title" with "First Card"
 		And I fill in "Description" with "Creating First Card"
		And I press "Create"
		Then I should be on card index page

