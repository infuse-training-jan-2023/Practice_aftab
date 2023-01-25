
require 'selenium-webdriver'

class Web_framework
  @url = nil
  def initialize()
    Selenium::WebDriver::Chrome::Service.driver_path="modules\\chromedriver.exe"
    @driver = Selenium::WebDriver.for :chrome
  end
  def get_webpage(url)
    @url = url
    @driver.get(url)
  end
  def click_element(element)
    element.click
  end
  def find_elements(element)
    return @driver.find_elements(element)
  end
  def find_element(element)
    return @driver.find_element(element)
  end
  def wait(time)
    sleep(time)
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
    return dropdown.find_elements(:tag_name,"option")[index].click
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

end

