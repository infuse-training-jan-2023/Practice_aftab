require './driver.rb'
def get_ith_column()
  driver = Driver.new.get_driver
  driver.get('https://cosmocode.io/automation-practice-webtable/')
  row = driver.find_elements(:tag_name,'tr')
  for row in row do
    puts row.find_elements(:tag_name,'td')[3].text
  end
end
get_ith_column()

