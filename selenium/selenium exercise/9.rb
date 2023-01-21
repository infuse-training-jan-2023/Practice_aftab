require './driver.rb'



driver = Driver.new.get_driver
driver.get('https://cosmocode.io/automation-practice-webtable/')
row = driver.find_elements(:tag_name,'tr')[0]
theads = row.find_elements(:tag_name,'td')
for head in theads do
  puts head.find_elements(:css,'*')[1].text
end
