require_relative './driver.rb'
class Automate_google
  def search_and_view_photos(query)
    driver = Driver.new.get_driver
    driver.get("https://www.google.com")
    input = driver.find_element(:name, 'q')
    input.send_keys query
    input.submit
    driver.find_element(:class,'MXl0lf').click
    sleep(2)
    driver.quit
  end
  def ask_google(question)
    driver = Driver.new.get_driver
    driver.navigate.to "http://www.google.com"
    search_field = driver.find_element(:name, 'q')
    search_field.send_keys(question)
    search_field.submit
    answer_btn = driver.find_element(:class, "wWOJcd")
    answer_btn.click
    sleep(2)
    answer_div = driver.find_element(:class,"Z0LcW").find_element(:tag_name,'div')
    answer_text = answer_div.text
    puts answer_text
    driver.quit
  end
  def get_movie_case_members(movie)
    driver = Driver.new.get_driver
    driver.navigate.to "http://www.google.com"
    search_field = driver.find_element(:name, 'q')
    search_field.send_keys(movie)
    search_field.submit
    main_case_members = driver.find_elements(:class,'oyj2db')
    main_case_members.slice(4,main_case_members.length-1).each{|member| puts member.text}
  end
end
question = "wealthiest athletes in the world"
query = "cute dogs"
movie = 'hunger games'
automate_google = Automate_google.new
automate_google.ask_google(question)
automate_google.search_and_view_photos(query)
automate_google.get_movie_case_members(movie)


