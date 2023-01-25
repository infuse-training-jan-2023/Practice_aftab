require_relative './web_framework.rb'


class Addtocart
  def initialize
    @driver = Web_framework.new
  end

  def search_for_item(url,query)
    @driver.maximize_window
    @driver.get_webpage(url)
    input = @driver.find_elements({:id=>'global-enhancements-search-query'})
    @driver.write_to_element(input[0],query)
    @driver.wait(4)
    search_btn = @driver.find_elements({:class=>'wt-nudge-b-2'})[0]
    @driver.click_element(search_btn)
    @driver.wait(2)
    item = @driver.find_elements({:class=>'height-placeholder'})[0]
    @driver.click_element(item)
    @driver.wait(5)
    @driver.switch_window(1)
    color = @driver.find_elements({:class=>'wt-select__element'})[0]

    @driver.select_item_from_dopdown(color,1)
    @driver.wait(2)
    material = @driver.find_elements({:class=>'wt-select__element'})[1]
    @driver.select_item_from_dopdown(material,1)
    @driver.wait(2)
    personalization_field = @driver.find_element({:id=>'listing-page-personalization-textarea'})
    @driver.write_to_element(personalization_field,'selenium')
    add_to_basket_btn = @driver.find_elements({:class=>'wt-btn--filled'})[3]
    @driver.click_element(add_to_basket_btn)
    @driver.wait(4)

  end
  def check_if_added()
  end
end

