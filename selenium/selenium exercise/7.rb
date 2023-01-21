require './driver.rb'

driver = Driver.new.get_driver

driver.get('https://testpages.herokuapp.com/styled/basic-html-form-test.html')
puts driver.find_element(:tag_name,'select').find_elements(:tag_name,'option')[2].text
