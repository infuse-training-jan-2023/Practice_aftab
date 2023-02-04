require_relative './driver.rb'
class Click_button
  def click(url)
    driver = Driver.new.get_driver
    driver.get(url)
    button = driver.find_element(:class, "gb_Ze")
    button.click
    sleep(3)
  end
end
url ='https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwjO2qv6vdD8AhU0R2wGHXFBDZYQPAgI'
Click_button.new.click(url)

