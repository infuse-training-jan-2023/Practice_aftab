require_relative './driver.rb'
class Get_title
  def get_title(url)
    driver = Driver.new.get_driver
    driver.get(url)
    puts driver.title
  end
end

url = 'https://www.google.com'
Get_title.new.get_title(url)

