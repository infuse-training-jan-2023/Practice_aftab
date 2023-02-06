
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
      elements = @driver.find_elements(element)
      if(elements.length==0)
        raise "no element found"
      end
      return elements
    rescue => e
      puts "Rescued: #{e.message}"
      return "error"
    end
  end

  def find_element(element)
    begin
      return @driver.find_element(element)
    rescue StandardError => e
      puts "Rescued: #{e.inspect}"
      return "error"
    end
  end

  def wait(type, timeout, element = nil)
    begin
      case type
      when :implicit
        @driver.manage.timeouts.implicit_wait = timeout
      when :explicit
        if(element==nil)
          wait = Selenium::WebDriver::Wait.new(timeout: timeout)
          wait.until { sleep(timeout) }
        else
          wait = Selenium::WebDriver::Wait.new(timeout: timeout)
          wait.until { element.isdisplayed? }
        end
      end
    end
    rescue
      return "enter a number"

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
    option = Selenium::WebDriver::Support::Select.new(dropdown).options[index]
    option.click
    return option
  end

  def switch_window(index)
    @driver.switch_to.window(@driver.window_handles[index])
  end

  def check_if_option_exists(dropdown,text)
    # i can't refactor the below code since if the first iteration fails it won't go to the next iteration
    # that is why i have not used the else statement
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

