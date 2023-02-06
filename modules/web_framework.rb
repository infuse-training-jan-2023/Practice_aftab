
require 'selenium-webdriver'
require_relative 'Driver.rb'

class Web_framework
  @url = nil
  def initialize(driver)
        @driver = driver
  end
  def get_webpage(url)
    @url = url
    @driver.get(url)
  end
  def click_element(element)
    begin
      return element.click
    rescue
      return "null element"
    end

  end
  def find_elements(element)
    begin
      return @driver.find_elements(element)
    rescue
      return nil
    end
  end

  def find_element(element)
    begin
      return @driver.find_element(element)
    rescue
      return nil
    end
  end

  def wait(time)
    if(time.is_a?Integer)
      sleep(time)
    else
      return "enter a number"
    end
  end

  def write_to_element(element,text)
      element.send_keys(text)
  end

  def press_key(key)
    @driver.action.key_down(key)
  end

  def get_page_title()
    # get the title using @url
    return @driver.title
  end

  def maximize_window()
    @driver.manage.window.maximize
  end

  def get_element_text(element)
    return element.text
  end

  def select_item_from_dopdown(dropdown,index)
    option = dropdown.find_elements(:tag_name,"option")[index]
    option.click
    return option
  end

  def switch_window(index)
    @driver.switch_to.window(@driver.window_handles[index])
  end

  def check_dropdown_options(dropdown,text)
    for option in dropdown.find_elements(:tag_name,'option')
      if option.text.downcase.include? text
        return true
      end
    end
    return false
  end
  def get_window_size
    return @driver.manage.window.size
  end
  def close_browser
    return @driver.quit
  end
  def get_screenshot()
    @driver.save_screenshot("screenshot.png")
  end
  def scroll_down
    @driver.execute_script "window.scrollTo(0, document.body.scrollHeight)"
  end




end

