
require_relative './driver.rb'
class Get_text
  def get_cell_value(url,row_index,col_index)
    driver = Driver.new.get_driver
    driver.get(url)
    puts driver.find_elements(:tag_name,'tr')[row_index].find_elements(:tag_name,'td')[col_index].text
  end
end

url = 'https://computer-database.gatling.io/computers'
col_index = 1
row_index = 3
Get_text.new.get_cell_value(url,row_index,col_index)




