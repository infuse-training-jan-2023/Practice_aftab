require_relative './web_framework.rb'


class Add_to_cart
  def initialize(url)
    my_driver = Driver.new.get_driver()
    @driver = Web_framework.new(my_driver)
    @driver.get_webpage(url)
  end

  def search_for_item()
    @driver.wait(:explicit,5)
    color = @driver.find_elements({:class=>'wt-select__element'})[0]
    @driver.select_item_from_dopdown(color,1)
    puts 'color selected'
    @driver.wait(:explicit,5)
    material = @driver.find_elements({:class=>'wt-select__element'})[1]
    @driver.select_item_from_dopdown(material,1)
    puts 'material selected'
    @driver.wait(:explicit,5)
    @driver.scroll_down
    personalization_field = @driver.find_element({:id=>'listing-page-personalization-textarea'})
    @driver.write_to_element(personalization_field,'selenium')
    puts 'personalized field done'
    add_to_basket_btn = @driver.find_elements({:class=>'wt-btn--filled'})[3]
    @driver.click_element(add_to_basket_btn)
    puts 'add to basket clicked'
    @driver.wait(:explicit,5)
    @driver.close_browser
  end
  def check_if_added()
  end
end

