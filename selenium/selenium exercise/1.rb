require_relative './driver.rb'

class Navigate
  def navigate_to_website(url)
    driver = Driver.new.get_driver
    driver.get(url)
    driver.manage.window.maximize
    sleep(1)
    driver.quit
  end
end

url ="https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes#:~:text=Class%20Meta%2DModel-,Class%20Definition,no%20separating%20characters%20(CamelCase)."
Navigate.new.navigate_to_website(url)
