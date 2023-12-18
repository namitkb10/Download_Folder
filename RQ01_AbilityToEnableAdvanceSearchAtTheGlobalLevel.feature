Feature: RQ01_AbilityToEnableAdvanceSearchAtTheGlobalLevel
        As admin user, should be able to enable the 'Advanced Search' setting
		so that, user entered search text should be processed using the advance search capability.

	/*Background:
	Given admin user is logged into the app portal
    When user navigate to the Catalog Behavior Page(Admin >> Site Management >> Settings >> Web Site >> Catalog Behavior Page)*/

@RQ01_FA25_TC_01
Scenario: Verify if Enable advanced search options check box is displayed and enabled by default
    Given admin user is logged into the app portal
    When user navigate to the Catalog Behavior Page(Admin >> Site Management >> Settings >> Web Site >> Catalog Behavior Page)
    Then the page should display Enable advance search options checkbox
    And “Enable advance search options” check box should be checked(by default)

@RQ01_FA25_TC_02
Scenario: Verify if Enable advanced search options check box is displayed as checked/unchecked on catalog behavior page
    Then the page should display Enable advance search options checkbox
    And “Enable advance search options” check box should be checked(by default)
    When user uncheck the “Enable advance search options” checkbox
    And user click on the save button,system display the save message
    Then “Enable advance search options” checkbox should be displayed as unchecked
    When user ensure the "Enable Advance Search Option" search term checkbox(is checked)
    And user click on the save button,system display the save message
    Then Enable advance search options checkbox should be displayed as checked
