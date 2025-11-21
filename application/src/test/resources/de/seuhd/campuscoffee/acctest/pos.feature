Feature: Points of Sale Management
  This feature allows users to create and modify points of sale (POS).

  Scenario: Insert and retrieve two POS
    Given an empty POS list
    When I insert POS with the following elements
      | name                   | description                      | type            | campus    | street          | houseNumber  | postalCode | city       |
      | Schmelzpunkt           | Great waffles                    | CAFE            | ALTSTADT  | Hauptstraße     | 90           | 69117      | Heidelberg |
      | Bäcker Görtz           | Walking distance to lecture hall | BAKERY          | INF       | Berliner Str.   | 43           | 69120      | Heidelberg |
      | New Vending Machine    | Use only in case of emergencies  | VENDING_MACHINE | BERGHEIM  | Teststraße      | 99a          | 12345      | Other City |
    Then the POS list should contain the same elements in the same order

# TODO: Add new scenario "Update one of three existing POS"
  Scenario: Update 1 of 3 existing POS
    Given another empty POS list
    When the following POS are given
      | name                   | description                      | type   | campus    | street          | houseNumber  | postalCode | city       |
      | Marstallcafe           | Uni-Cafe                         | CAFE   | ALTSTADT  | Marstallhof     | 5            | 69117      | Heidelberg |
      | Bäckerei Riegler       | good variety                     | BAKERY | ALTSTADT  | Hauptstraße     | 109          | 69120      | Heidelberg |
      | Cafe Pur               | Uni-Cafe                         | CAFE   | BERGHEIM  | Bergheimer Str. | 58           | 69115      | Heidelberg |
   Then the elements should be added to the POS list in order
   When the POS named "Marstallcafe" description is updated to "closed fridays & saturdays"
   Then the POS named "Marstallcafe" description should be "closed fridays & saturdays"


  #the first step of aufgabe b is creating the POS based on the table which can be done with the first scenario meaning technically we could implement the description change alone
  #alternative Scenario to only implementing the 2nd part
    #Given the following POS exist
     # | name                   | description                      | type            | campus    | street          | houseNumber  | postalCode | city       |
    #  | Schmelzpunkt           | Great waffles                    | CAFE            | ALTSTADT  | Hauptstraße     | 90           | 69117      | Heidelberg |
     # | Bäcker Görtz           | Walking distance to lecture hall | BAKERY          | INF       | Berliner Str.   | 43           | 69120      | Heidelberg |
    #  | New Vending Machine    | Use only in case of emergencies  | VENDING_MACHINE | BERGHEIM  | Teststraße      | 99a          | 12345      | Other City |
   # When the description of the POS named "Schmelzpunkt" is updated to "ice cream parlor"
   # Then the POS named "Schmelzpunkt" should have the description "ice cream parlor"
