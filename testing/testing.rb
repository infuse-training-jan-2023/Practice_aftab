require "test/unit"
require './modules/web_framework.rb'
require './modules/Driver.rb'


class Testing < Test::Unit::TestCase

  def test_dropdown_options
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    dropdown = my_driver.find_element({:id=>'language'})
    driver = Web_framework.new(my_driver)
    dropdown = driver.find_element({:id=>'language'})
    assert_equal(true,driver.check_dropdown_options(dropdown,"english"))
  end

  def test_dropdown_item_selection
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    dropdown = my_driver.find_element({:id=>'language'})
    driver = Web_framework.new(my_driver)
    assert_equal('English',driver.select_item_from_dopdown(dropdown,1).text)
  end

  def test_find_element
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    driver = Web_framework.new(my_driver)
    assert_not_equal(nil,driver.find_element({:id=>'language'}))
  end

  def test_find_elements
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    driver = Web_framework.new(my_driver)
    assert_not_equal(nil,driver.find_elements({:tag_name=>'options'}))
  end

  def test_element_click
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    element = nil
    driver = Web_framework.new(my_driver)
    assert_equal("null element",driver.click_element(element))
  end

  def test_page_title
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    driver = Web_framework.new(my_driver)
    assert_equal("form",driver.get_page_title())
  end
  def test_wait
    my_driver = Driver.new.get_driver()
    url = 'C:\Users\Aftab\Desktop\webTestFramework\form\form.html'
    my_driver.get(url)
    driver = Web_framework.new(my_driver)
    # for anything except integer it returns enter a number
    assert_equal("enter a number",driver.wait("hello"))
  end
end

