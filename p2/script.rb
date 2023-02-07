require 'faker'

puts 'enter your name'
name = gets.chomp

country = ENV['country']
person = {
  name: name,
  country: country,
  address: Faker::Address.full_address,
  phone_number: Faker::PhoneNumber.phone_number
}
puts person
