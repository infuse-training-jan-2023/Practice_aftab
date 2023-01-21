require './driver.rb'

driver = Driver.new.get_driver

driver.get('https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwiY3dWE9df8AhVCT2wGHY8GBLkQPAgI')
input = driver.find_element(:class,'gLFyf')
input.send_keys('cute cats')
driver.action.key_down(:enter).perform
sleep(4)
