require 'selenium-webdriver'


def get_title(url)
  driver = Driver.new.get_driver
  driver.get(url)
  return driver.title
end

puts get_title('https://www.google.com')

