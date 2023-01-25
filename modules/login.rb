require_relative './web_framework.rb'
class Login
  def initialize(url)
    @driver = Web_framework.new
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
    @driver.maximize_window
    # signin_btn = @driver.find_element({:class=>'wt-btn'})
    # signin_btn.click
    signin = @driver.find_element({:class=>'select-signin'})
    @driver.click_element(signin)
    @driver.wait(3)
    email = @driver.find_element({:id=>'join_neu_email_field'})
    @driver.write_to_element(email,username)
    passworde = @driver.find_element({:id=>'join_neu_password_field'})
    @driver.write_to_element(passworde,password)
    @driver.wait(3)
    signinb = @driver.find_element({:xpath=>'//*[@id="join-neu-form"]/div[1]/div/div[7]/div/button'})
    @driver.click_element(signinb)
    @driver.wait(3)
  end
  def logout()
    if(login_status=="logged_in")
      account_ico = @driver.find_element({:xpath=>'//*[@id="gnav-header-inner"]/div[3]/nav/ul/li[3]/div/button/span[1]/img'})
      @driver.click_element(account_ico)
      logout_btn = @driver.find_element({:xpath=>'//*[@id="gnav-header-inner"]/div[3]/nav/ul/li[3]/div/div/ul/li[7]/a/div[1]/span'})
      @driver.click_element(logout_btn)
    end
  end
  def login_status
    @login_status
  end

end

