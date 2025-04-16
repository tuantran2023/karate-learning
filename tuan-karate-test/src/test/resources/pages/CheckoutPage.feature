Feature: Checkout Page

Scenario: Enter checkout info and complete order
  * def user = karate.get('user')
  
  # Wait for and input checkout info
  * waitFor('#first-name')
  * input('#first-name', user.firstName)
  * input('#last-name', user.lastName)
  * input('#postal-code', user.postalCode)
  When submit().click("//input[@value='CONTINUE']")
    # * script("document.querySelector('a[href=\\\"./checkout-complete.html\\\"]').click()")
  * click('{a}FINISH')

  # Wait for the checkout completion container
  * waitFor('#checkout_complete_container')
