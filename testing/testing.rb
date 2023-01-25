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
    driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')
    dropdown = driver.find_element({:id=>'language'})
    assert_equal('English',driver.select_item_from_dopdown(dropdown,1).text)
  end
  def test_find_element
    driver = Web_framework.new
    driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')
    assert_not_equal(nil,driver.find_element({:id=>'language'}))
  end
  def test_find_elements
    driver = Web_framework.new
    driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')
    assert_not_equal(nil,driver.find_elements({:tag_name=>'options'}))
  end
  def test_element_click
    driver = Web_framework.new
    driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')
    # wrong id for element to check for negative case
    element = driver.find_element({:id=>'languages'})
    assert_equal("null element",driver.click_element(element))
  end
  def test_page_title
    driver = Web_framework.new
    driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')
    assert_equal("form",driver.get_page_title())
  end
  def test_wait
    driver = Web_framework.new
    driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')
    # for anything except integer it returns enter a number
    assert_equal("enter a number",driver.wait("hello"))
  end
  # def test_maximize_window
  #   driver = Web_framework.new
  #   driver.get_webpage('http://127.0.0.1:5500/form/form.html?name=&email=&password=&phoneNumber=&language=&zipcode=&about=')

  #   puts driver.manage.window.size
  #   assert_equal(true,true)
  # end
end

