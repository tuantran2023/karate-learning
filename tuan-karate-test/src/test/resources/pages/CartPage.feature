Feature: Cart Page

Scenario: Go to checkout
  * click('.checkout_button')
  * waitFor('#checkout_info_container')
