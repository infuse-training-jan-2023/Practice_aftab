require_relative './login.rb'
require_relative './subscription.rb'
require_relative './add_to_cart.rb'


def logging_feature()
  login = Login.new('https://www.etsy.com/in-en')
  login.get_login_status({:class=>'select-signin'})
  if(login.login_status=='logged_in')
    puts "already logged in"
  else
    login.login('username','password')
    puts "logged in"
  end
end

def subscription_feature()
  sub = Subscription.new()
  sub.subscribe('https://www.etsy.com/in-en','rohan149@gmail.com')
  puts "subscribed"
end


def add_to_cart_feature()
  addtocart = Add_to_cart.new('https://www.etsy.com/in-en/listing/878196517/personalized-name-shoe-buckle-in-gold?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=shoes&ref=sc_gallery-1-2&pro=1&sts=1&plkey=c3d5c8bc0d1f67e1f441ac9a1967f87fd1fb1532%3A878196517')
  addtocart.search_for_item()
  puts "added to cart"
end
logging_feature()
add_to_cart_feature()
subscription_feature()


