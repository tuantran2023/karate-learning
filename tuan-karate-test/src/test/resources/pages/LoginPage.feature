Feature: Login Page

Scenario: Login with valid credentials
  * def user = karate.get('user')
  * if (!user || !user.username) karate.fail('>>> Missing user in LOGIN: ' + user)
  # Launch the app
  * def config = { baseUrl: 'https://www.saucedemo.com/v1/' }
  * driver config.baseUrl

  # Perform login
  * waitFor('#user-name')
  * input('#user-name', user.username)
  * input('#password', user.password)
  * click('#login-button')
  * waitFor('#inventory_container')
