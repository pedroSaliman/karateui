Feature: first test
  Scenario: first1
    * configure driver = { type: 'chrome' }

    Given driver "https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F"
    * driver.maximize()
    * clear("#Email")
    * input("#Email","admin@yourstore.com")
    * clear("#Password")
    * input("#Password","admin")
    When click("button[type='submit']")
    * waitUntil("document.title == 'Dashboard / nopCommerce administration'")