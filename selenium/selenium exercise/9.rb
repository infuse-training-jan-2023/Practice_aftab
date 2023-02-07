require_relative './driver.rb'
class Table_headers
  def get_table_headers(url)
    driver = Driver.new.get_driver
    driver.get(url)
    header_row = driver.find_elements(:tag_name,'tr')[0]
    header_row_cells = header_row.find_elements(:tag_name,'td')
    for head in header_row_cells do
      puts head.text
    end
  end
end
url = 'https://cosmocode.io/automation-practice-webtable/'
Table_headers.new.get_table_headers(url)


