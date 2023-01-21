require 'selenium-webdriver'


driver = Driver.new.get_driver
driver.get('https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwjO2qv6vdD8AhU0R2wGHXFBDZYQPAgI')
button = driver.find_element(:class, "gb_Ze")
button.click
sleep(3)
