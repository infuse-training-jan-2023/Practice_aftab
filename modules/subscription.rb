require_relative './web_framework.rb'

class Subscription
  def initialize()
    @driver = Web_framework.new
  end
  def subscribe(url,email)
    @driver.get_webpage(url)
    @driver.maximize_window
    signin_btn = @driver.find_elements({:class=>'select-signin'})

    if(signin_btn)
      puts "found"
      sub_input = @driver.find_elements({:class=>'wt-input-btn-group__input'})[1]
      @driver.write_to_element(sub_input,email)
      puts email
      @driver.wait(3)
      sub_btn = @driver.find_elements({:xpath=>'//*[@id="collage-footer"]/footer/div[2]/div/form/div[2]/div/button'})[0]
      @driver.click_element(sub_btn)
      @driver.wait(3)
    else
      puts "logged in"
    end
  end
end
