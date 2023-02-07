require_relative './driver.rb'
class Select
  def checkbox_radio(url)
    driver = Driver.new.get_driver
    driver.get(url)
    driver.manage.window.maximize
    driver.find_elements(:name,'radiooptions')[1].click
    driver.find_element(:id,'checkbox2').click
  sleep(4)
  end
end
url = 'https://demo.automationtesting.in/Register.html'
Select.new.checkbox_radio(url)


