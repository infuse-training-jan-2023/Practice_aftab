require "test/unit"
require './modules/web_framework.rb'


class Testing < Test::Unit::TestCase
  def test_check_if_option_exists
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    sleep(3)
    dropdown = driver.find_element({:id=>'language'})
    assert_equal(true,driver.check_if_option_exists(dropdown,"english"))
  end
   def test_check_if_option_exists_negative
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    dropdown = driver.find_element({:id=>'language'})
    assert_not_equal(true,driver.check_if_option_exists(dropdown,"english1"))
   end
  def test_dropdown_item_selection
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    dropdown = driver.find_element({:id=>'language'})
    assert_equal('English',driver.select_item_from_dopdown(dropdown,1).text)
  end
  def test_dropdown_item_selection_negative
   driver = Web_framework.new
   url = 'file:///testing/form/form.html'
   driver.get_webpage(url)
   dropdown = driver.find_element({:id=>'language'})
   assert_not_equal('spanish',driver.select_item_from_dopdown(dropdown,1).text)
  end
  def test_find_element
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    element = driver.find_element({:id=>'language'})
    result = element.text.include?"language"
    assert_equal(true,result)
  end

  def test_find_element_negative
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    element = driver.find_element({:id=>'language'})
    assert_not_equal("error",element)
  end
  def test_find_elements
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    result = driver.find_elements({:tag_name=>'option'}).length>0
    assert_equal(true,result)
  end
  def test_find_elements_negative
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    assert_not_equal("error",driver.find_elements({:tag_name=>'option'}))
  end
  def test_element_click_when_element_not_found
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    # wrong id for element to check for negative case
    element = driver.find_element({:id=>'languages'})
    assert_equal("null element",driver.click_element(element))
  end
  def test_element_click_when_found
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    # wrong id for element to check for negative case
    element = driver.find_element({:id=>'language'})
    assert_not_equal("null element",driver.click_element(element))
  end
  def test_page_title
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    assert_equal("form",driver.get_page_title())
  end
  def test_wrong_page_title_negative
    driver = Web_framework.new
    url = 'file:///testing/form/form.html'
    driver.get_webpage(url)
    assert_not_equal("wrong title",driver.get_page_title())
  end
end

