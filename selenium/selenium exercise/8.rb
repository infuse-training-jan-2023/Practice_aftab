require_relative './driver.rb'
class Scrollbar
    def slide(url)
      driver = Driver.new.get_driver
      driver.get(url)
      driver.manage.window.maximize
      sleep(3)
      iframe =driver.find_element(:css,'iframe.lazyloaded')
      driver.switch_to.frame(iframe)
      slider = driver.find_element(:tag_name,'span')
      driver.action.key_down(:control).perform
      slider.send_keys(:right)
      sleep(2)
      driver.quit()
    end
  end
url = 'https://www.globalsqa.com/demo-site/sliders/#Steps'
 Scrollbar.new.slide(url)
