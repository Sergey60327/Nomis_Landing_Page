require 'selenium-cucumber'

Given("I navigate to {string}") do |URL|
    $driver.navigate.to URL
  end

  When("I click {string}") do |string|
    $driver.click("//*[@id="hs_menu_wrapper_module_143922105801416"]/ul/li[2]/a")
  end

  Then("I should be taken to Resources") do
    $driver.current_url = "https://www.nomissolutions.com/resources"

  end

  Given("I navigate to {string}") do |URL2|
    $driver.navigate.to URL2
  end

  When("i fill out the form") do
    input = wait.until {
    element = browser.find_element(:id, "email-4f440d8c-1016-4aec-9810-4d26c26da6b9_8280")
    element if element.displayed?
}
input.send_keys("email@exxample.com")

  input = wait.until {
    element = browser.find_element(:id, "firstname-4f440d8c-1016-4aec-9810-4d26c26da6b9_8280")
    element if element.displayed?
  }
  input.send_keys("John")

  input = wait.until {
    element = browser.find_element(:id, "lastname-4f440d8c-1016-4aec-9810-4d26c26da6b9_8280")
    element if element.displayed?
  }
  input.send_keys("Smith")

  end

  When("I click {string}") do |subscribe|
    $driver.click("//*[@id="hsForm_4f440d8c-1016-4aec-9810-4d26c26da6b9_8280"]/div/div[2]/input")
  end

  Then("should be shown a confirmation {string}") do |msg|
    $driver.get
  end
