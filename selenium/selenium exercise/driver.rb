require 'selenium-webdriver'

class Driver
  def get_driver
    Selenium::WebDriver::Chrome::Service.driver_path="C:\\Users\\Aftab\\Desktop\\selenium\\chromedriver.exe"
    driver = Selenium::WebDriver.for :chrome
    return driver
  end
end




