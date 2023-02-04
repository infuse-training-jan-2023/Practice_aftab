require_relative './driver.rb'
class Select_item
  def select_ith_item(url,index)
    driver = Driver.new.get_driver
    driver.get(url)

    drop_down = driver.find_element(:tag_name,'select')
    puts Selenium::WebDriver::Support::Select.new(drop_down).options[index].text
    sleep(3)
  end
end
url ='https://testpages.herokuapp.com/styled/basic-html-form-test.html'
index = 2
Select_item.new.select_ith_item(url,index)


