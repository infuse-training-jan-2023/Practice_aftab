require './driver.rb'

driver = Driver.new.get_driver
driver.get('https://demo.automationtesting.in/Register.html')
driver.manage.window.maximize
driver.find_elements(:name,'radiooptions')[1].click
driver.find_element(:id,'checkbox2').click
sleep(4)
