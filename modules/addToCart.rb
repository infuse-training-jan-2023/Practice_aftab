require_relative './web_framework.rb'
require 'base64'


class Addtocart
  def initialize(url)
    my_driver = Driver.new.get_driver()
    @driver = Web_framework.new(my_driver)
    @driver.get_webpage(url)
  end

  def search_for_item()
    # @driver.maximize_window
    # @driver.wait(2)
    # input = @driver.find_element({:id=>'global-enhancements-search-query'})
    # @driver.write_to_element(input,query)
    # @driver.wait(4)

    # @driver.get_screenshot()
    # img = File.open('screenshot.png','rb') do |file|
    #   Base64.strict_encode64(file.read)
    # end
    # # puts img
    # search_btn = @driver.find_elements({:class=>'wt-nudge-b-2'})[0]
    # @driver.click_element(search_btn)
    # @driver.wait(2)
    # puts "search done"
    # # puts @driver.get_screenshot()
    # item = @driver.find_elements({:class=>'height-placeholder'})[0]
    # @driver.click_element(item)
    # puts 'clicked first item'
    # @driver.wait(3)
    # @driver.switch_window(1)
    @driver.wait(5)
    color = @driver.find_elements({:class=>'wt-select__element'})[0]
    @driver.select_item_from_dopdown(color,1)
    puts 'color selected'
    @driver.wait(5)
    material = @driver.find_elements({:class=>'wt-select__element'})[1]
    @driver.select_item_from_dopdown(material,1)
    puts 'material selected'
    @driver.wait(5)
    @driver.scroll_down
    personalization_field = @driver.find_element({:id=>'listing-page-personalization-textarea'})
    @driver.write_to_element(personalization_field,'selenium')
    puts 'personalized field done'
    add_to_basket_btn = @driver.find_elements({:class=>'wt-btn--filled'})[3]
    @driver.click_element(add_to_basket_btn)
    puts 'add to basket clicked'
    @driver.wait(4)
    @driver.close_browser
  end
  def check_if_added()
  end
end

