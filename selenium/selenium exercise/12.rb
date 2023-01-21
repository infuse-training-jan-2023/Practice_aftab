require './driver.rb'
driver = Driver.new.get_driver
driver.get("https://www.google.com")

input = driver.find_element(:name, 'q')      #q is the namespace of searchbox element
input.send_keys "cute dogs"    #send_keys method used to write text
input.submit
driver.find_element(:class,'MXl0lf').click

img = driver.find_element(:class,'islrc').find_elements(:tag_name,'img')[4]

src_of_image = img.attribute("src")
driver.execute_script "window.scrollTo(0, document.body.scrollHeight)"
driver.execute_script "window.scrollTo(0, document.body.scrollHeight)"
img.click
driver.quit
