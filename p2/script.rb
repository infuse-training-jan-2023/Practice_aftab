require 'json'

data = '{"name":"aftab","age": "22"}'
puts "What is your lastname?"
a = " "+gets.chomp
d = JSON.parse(data)
puts "your name is "+d["name"]+a+" you are " +d["age"]+ " years of age"
