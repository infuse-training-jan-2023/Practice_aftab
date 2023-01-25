require_relative './login.rb'
require_relative './subscription.rb'
require_relative './addToCart.rb'


def logging_feature()
  login = Login.new('https://www.etsy.com/in-en')
  login.get_login_status({:class=>'select-signin'})
  if(login.login_status=='logged_in')
    login.logout
  else
    login.login('username','password')
  end
end

def subscription_feature()
  sub = Subscription.new
  sub.subscribe('https://www.etsy.com/in-en','rohan149@gmail.com')
end


def addtocart_feature()
  addtocart = Addtocart.new()
  addtocart.search_for_item('https://www.etsy.com/in-en',"shoes")
end
# logging_feature()
# addtocart_feature()
subscription_feature()


