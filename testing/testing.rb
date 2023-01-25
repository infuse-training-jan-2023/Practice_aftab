require "test/unit"
require_relative 'C:\Users\Aftab\Desktop\webTestFramework\modules\web_framework.rb'


class Testing < Test::Unit::TestCase
  def test_dropdown_options
    driver = Web_framework.new
    url = 'http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about='
    driver.get_webpage(url)
    dropdown = driver.find_element({:id=>'language'})
    assert_equal(true,driver.check_dropdown_options(dropdown,"english"))
  end
  def test_dropdown_item_selection
    driver = Web_framework.new
    dropdown = driver.find_element({:id=>'language'})
    assert_equal('english',driver.select_item_from_dopdown())


  end

end

