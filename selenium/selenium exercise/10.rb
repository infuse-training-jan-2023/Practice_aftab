require_relative './driver.rb'
class Get_column
  def get_ith_column(url,index)
    driver = Driver.new.get_driver
    driver.get(url)
    rows = driver.find_elements(:tag_name,'tr')
    for row in rows do
      puts row.find_elements(:tag_name,'td')[index].text
    end
  end
end
url = 'https://cosmocode.io/automation-practice-webtable/'
index  = 3
Get_column.new.get_ith_column(url,index)

