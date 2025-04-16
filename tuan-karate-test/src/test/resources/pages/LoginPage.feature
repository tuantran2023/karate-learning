Feature: Login Page

Scenario: Login with valid credentials
  * def user = karate.get('user')
  * def baseUrl = karate.get('baseUrl')
  * if (!user || !user.username) karate.fail('>>> Missing user in LOGIN: ' + user)
  # Launch the app
  * driver baseUrl

  # Perform login
  * waitFor('#user-name')
  * input('#user-name', user.username)
  * input('#password', user.password)
  * click('#login-button')
  * waitFor('#inventory_container')
