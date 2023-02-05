require 'selenium-webdriver'


class Driver
  def get_driver_with_options()
        Selenium::WebDriver::Chrome::Service.driver_path=ENV['driver']
        options = Selenium::WebDriver::Chrome::Options.new
            options.add_argument('--headless')
            options.add_argument('--no-sandbox')
            options.add_argument('--disable-dev-shm-usage')
            options.add_argument('--window-size=1920,1080')
        return Selenium::WebDriver.for :chrome ,options: options
  end
end

