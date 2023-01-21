require './driver.rb'


driver = Driver.new.get_driver

driver.get('https://letcode.in/forms')
countries =  driver.find_elements(:tag_name,'select')[1].find_elements(:tag_name,"option")
for country in countries do
  puts country.text
end
