require_relative './driver.rb'
class Drop_down
  def get_content(url)
    driver = Driver.new.get_driver
    driver.get(url)
    drop_down =  driver.find_elements(:tag_name,'select')[1]
    options = Selenium::WebDriver::Support::Select.new(drop_down).options
    options.each {|option| puts option.text}
  end
end
url = 'https://letcode.in/forms'
Drop_down.new.get_content(url)


