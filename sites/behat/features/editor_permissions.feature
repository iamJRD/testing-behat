Feature: Editor Permissions
	In order to help edit own content
		As an editor
		I need to create content and edit it

@api
Scenario: Logs editor in to the site and creates content
  Given I am logged in as a user with the "editor" role
  When I follow "Add content"
  And I follow "Blog Post"
    And I fill in "Title" with "BDD TESTING Testing"
    And I fill in "Body" with "Yay!"
    And I press "Save"
  Then I should see "Blog Post BDD TESTING Testing has been created."

@api
Scenario: Editor edits own content
	Given I am logged in as a user with the "editor" role
    And I am viewing my "Blog Post" with the title "BDD TESTING Testing"
  Then I follow "Edit"
    And I fill in "Title" with "BDD TESTING is super fun stuff"
    And I press "Save"
  Then I should see "Blog Post BDD TESTING is super fun stuff has been updated"

  @api
  Scenario: Editor deletes own content
  	Given I am logged in as a user with the "editor" role
      And I am viewing my "Blog Post" with the title "BDD TESTING Testing"
    Then I follow "Edit"
      And I press "Delete"
      And I press "Delete"
    Then I should see "Blog Post BDD TESTING Testing has been deleted."

    
