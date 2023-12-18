Feature: RQ05_Feature

		As admin user, should be able to perform multiple operation on "Basic Search" and in 'Enable Advanced Search options' setting

Background:
	Given admin user is logged into the app portal
	When user navigate to the Catalog Behavior Page(Admin >> Site Management >> Settings >> Web Site >> Catalog Behavior Page)

# @Scenario-01 - =========================================================
Scenario: Verify if Admin user can view the different search term and Enable advance search options to configure
# RQ01_Pages-27
# Given admin user is logged into the app portal
# RQ01_Pages-34
# When user navigate to the Catalog Behavior Page(Admin >> Site Management >> Settings >> Web Site >> Catalog Behavior Page)
# @RQ02_FA-30_tag1-25
Then the Admin should be able to view the different search terms (Title, Brief Description, Full Description, Keyword)
# @RQ02_FA-30_tag1-32
And the Admin should be able to view the different Enable advance search options(Enable search by catalog classification,Enable search result display based on catalog classification,Enable fuzzy logic search,Enable search history based on user profile) check boxes

# @Scenario-02 - =========================================================

#similar as RQ03 Scenario-10
Scenario: Verify the search by classification functionality when user selects(check) the 'Enable Catalog Classification' search term

# Given end user is logged into the app portal and is on the Catalog Behavior Page
# When user navigate to the Catalog Behavior Page(Admin >> Site Management >> Settings >> Web Site >> Catalog Behavior Page)
#When user navigated to Catalog Behavior Page

When user ensure the "Title" search term checkbox(is checked)
Then "Title" search term checkbox should be checked

And the page should display Enable advance search options checkbox
And “Enable advance search options” check box should be checked(by default)

When user click on(check) the Enable search by catalog classification check box
Then Enable search result display based on catalog classification check box should be enable for the admin user
When user clicks on(check) the Enable search result display based on catalog classification check box
Then system should dispaly the Enable search result display based on catalog classification check box as checked

When user navigate to the Catalog Classification page(Admin >> Site Management >> Settings >> Web Site >> Catalog Classification page)

And user click on(check) the Enable Catalog Classification check box

# Added Save and verify method here # And user click on save button and confirm the message

Then system should display the Enable Catalog Classification search option check box as checked

When user navigate to the browser catalog tab to perform the search

And user search by the data related to the "Title" from the app portal application
Then system should display the search results according to the data provided "Title" in the search text box
Then user should be able to see the "Classification" option selected in the sort dropdown box
And all the search results should be automatically sorted by the catalog classification


# @Scenario-03 - =========================================================
Scenario: Verify the system should display the search results based on Preferred,Non-classified,Non-preferred order

# Given admin user is logged into the app portal
# When user navigate to the Catalog Classification page(Admin >> Site Management >> Settings >> Web Site >> Catalog Classification page)

When user ensure the "Title" search term checkbox(is checked)
Then "Title" search term checkbox should be checked

And the page should display Enable advance search options checkbox
And “Enable advance search options” check box should be checked(by default)

When user click on(check) the Enable search by catalog classification check box
Then Enable search result display based on catalog classification check box should be enable for the admin user
When user clicks on(check) the Enable search result display based on catalog classification check box
Then system should dispaly the Enable search result display based on catalog classification check box as checked

When user navigate to the Catalog Classification page(Admin >> Site Management >> Settings >> Web Site >> Catalog Classification page)

And user click on(check) the Enable Catalog Classification check box

Then system should display the Enable Catalog Classification search option check box as checked

When user navigate to the browser catalog tab to perform the search

And user search by the data related to the "Title" from the app portal application
Then system should display the search results according to the data provided "Title" in the search text box
Then user should be able to see the "Classification" option selected in the sort dropdown box

Then system should display the search results according to the data provided "Title" in the search text box

Then system should display the search results based on Preferred,Non-Classified,Non-preferred catalog items order
And all the Preferred,Non-classified,Non-preferred catalog items catalog items should be sorted alphabetically in respective classifications
# Above Not completed

# @Scenario-04 - =========================================================

Scenario: Verify the system should display the search results based on alphabetically sorted order

# Given end user is logged into the app portal

When user ensure the "Title" search term checkbox(is checked)
Then "Title" search term checkbox should be checked

And the page should display Enable advance search options checkbox
And “Enable advance search options” check box should be checked(by default)

When user click on(check) the Enable search by catalog classification check box
Then Enable search result display based on catalog classification check box should be enable for the admin user
When user clicks on(check) the Enable search result display based on catalog classification check box
Then system should dispaly the Enable search result display based on catalog classification check box as checked

When user navigate to the Catalog Classification page(Admin >> Site Management >> Settings >> Web Site >> Catalog Classification page)

And user click on(Uncheck) the Catalog Classification check box	

Then system should display the Enable Catalog Classification search option check box as unchecked

When user navigate to the browser catalog tab to perform the search

And user search by the data related to the "Title" from the app portal application
Then system should display the search results according to the data provided "Title" in the search text box
Then user should not be able to see the "Classification" option selected in the sort dropdown box

Then system should display the search results according to the data provided "Title" in the search text box

# Then system should display the search results based on Preferred,Non-Classified,Non-preferred catalog items order
And all the Preferred,Non-classified,Non-preferred catalog items catalog items should be sorted alphabetically in respective classifications
# @Scenario-05 - =========================================================
Scenario: Verify that system should not display the search results for the catalog items when 'Is Enabled' is unchecked

# Given admin user is logged into the app portal
# When user navigate to the Catalog Classification page(Admin >> Site Management >> Settings >> Web Site >> Catalog Classification page)

# When user Uncheck the "Full description,Brief description,Keyword" search term check box
When user ensure the "Title" search term checkbox(is checked)
Then "Title" search term checkbox should be checked
# And "Full description,Brief description,Keyword" search terms check boxs should be displayed as unchecked
And user click on Save button and display the message
# When user navigate to the browser catalog tab to perform the search

When user navigate to the catalog item page(Admin >> Catalog Management >> Current Catalog Items >>View All Item >> Double Click on any items >> A new window(pop-up) will open >>In Global(Tab) >> Inside Global Options box) to disable the items
And user uncheck the Is enabled check box
And click on Save button and verify the message
Then Is enabled check box should display as unchecked
When user close the general settings popup page
Then system should not display the general settings popup page

When user navigate to the browser catalog tab to perform the search operation

And user search by the data related to the "Title" from the app portal application for isEnabledSave
Then system should not display the search results for the data provided "Title" search term  for isEnabledSave

# And navigate to the browser catalog page
#When user search by the data related to the "Title" from the app portal application
#Then system should not display the search results for the data provided "Title" search term

# @Scenario-06 - =========================================================
Scenario: Verify that system should not display the search results for the catalog items when 'Archive' button is clicked and confirmed

# Given admin user is logged into the app portal
# When user navigate to the Catalog Classification page(Admin >> Site Management >> Settings >> Web Site >> Catalog Classification page)

# When user Uncheck the "Full description,Brief description,Keyword" search term check box
When user ensure the "Title" search term checkbox(is checked)
Then "Title" search term checkbox should be checked
# And "Full description,Brief description,Keyword" search terms check boxs should be displayed as unchecked
And user click on Save button and display the message
# When user navigate to the browser catalog tab to perform the search

When user navigate to the catalog item page(Admin >> Catalog Management >> Current Catalog Items >>View All Item >> Double Click on any items >> A new window(pop-up) will open >>In Global(Tab) >> Inside Global Options box) to disable the items(Archive
And click on Archive button and Confirm the message
# And click on Save button and verify the message
# Then Is enabled check box should display as unchecked
When user close the general settings popup page
Then system should not display the general settings popup page
And  archived data should not display in the item search grid

When user navigate to the browser catalog tab to perform the search operation

And user search by the data related to the "Title" from the app portal application for isEnabledSave
# Then system should not display the search results for the data provided "Title" search term
Then system should not display the search results for the data provided "Title" search term  for isEnabledSave
And user update the Archived data in the SQL


