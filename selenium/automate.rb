require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path="C:\\Users\\Aftab\\Desktop\\selenium\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome


driver.get("https://www.google.com")
input = driver.find_element(:class, "gLFyf")
input.send_keys("youtube")
sleep(3)
input.send_keys(:enter)
sleep(3)
driver.quit
