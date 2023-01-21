
require './driver.rb'
driver = Driver.new.get_driver
driver.get('https://computer-database.gatling.io/computers')
puts driver.find_elements(:tag_name,'tr')[3].find_elements(:tag_name,'td')[1].text


