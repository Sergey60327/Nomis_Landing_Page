Feature: Nomis Landing Page

@test_search
Scenario: Search_field test
  Given I navigate to "https://www.nomissolutions.com"
  And I enter "Value" into input field having id "gs_tti50"
  When I click on element having class "gsc-search-button"
  And I wait for 3 sec
  Then element having id "hs_cos_wrapper_module_142781716245219278" should have text as "Search"
