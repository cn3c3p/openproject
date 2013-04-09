Feature: Int custom fields can be created

  Background:
    Given I am admin
    And the following languages are active:
      | en |
      | de |
    When I go to the custom fields page
    When I follow "New custom field" within "#tab-content-IssueCustomField"

  @javascript
  Scenario: Creating a date custom field
    When I select "Integer" from "custom_field_field_format"
    And I add the english localization of the "name" attribute as "New Field"
    And I add the english localization of the "default_value" attribute as "342"
    And I press "Save"
    Then I should be on the custom fields page
