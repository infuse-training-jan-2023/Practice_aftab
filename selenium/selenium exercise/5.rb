require_relative './driver.rb'
class Search
  def search(url,query)
    driver = Driver.new.get_driver
    driver.get(url)
    input = driver.find_element(:class,'gLFyf')
    input.send_keys(query)
    input.send_keys(:enter)
    sleep(3)
  end
end
url ='https://www.google.com/webhp?hl=en&sa=X&ved=0ahUKEwiY3dWE9df8AhVCT2wGHY8GBLkQPAgI'
query ='cute cats'
Search.new.search(url,query)


