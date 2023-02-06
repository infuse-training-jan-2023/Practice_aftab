require_relative './web_framework.rb'
class Login
  def initialize(url)
    my_driver = Driver.new.get_driver()
    @driver = Web_framework.new(my_driver)
    @driver.get_webpage(url)
    @login_status = nil
  end
  def get_login_status(element_identifier)
    signin_btn = @driver.find_element(element_identifier)

    if(signin_btn)
      # puts signin_btn.text
      @login_status="logged_out"
    else
      @login_status="logged_in"
    end
  end
  def login(username,password)
    # @driver.maximize_window
    signin = @driver.find_element({:class=>'select-signin'})
    @driver.click_element(signin)
    @driver.wait(3)
    email = @driver.find_element({:id=>'join_neu_email_field'})
    @driver.write_to_element(email,username)
    passworde = @driver.find_element({:id=>'join_neu_password_field'})
    @driver.write_to_element(passworde,password)
    @driver.wait(3)
    signinb = @driver.find_elements({:class=>'wt-btn--primary'})[4]
    @driver.click_element(signinb)
    @driver.wait(4)
    @driver.close_browser()
  end
  def login_status
    @login_status
  end

end

