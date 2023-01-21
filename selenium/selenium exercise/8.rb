require './driver.rb'



driver = Driver.new.get_driver
driver.get('https://www.globalsqa.com/demo-site/sliders/#Steps')
sleep(4)
iframe = driver.find_elements(:class, 'demo-frame')
driver.switch_to.frame iframe
puts driver.find_element(:css,'#slider span').click
