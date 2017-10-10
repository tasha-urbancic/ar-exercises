require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts 'Write a store name'
print '>'
@store_name_input = gets.chomp

puts "store_name_input #{@store_name_input}"

new_user_store = Store.create name: @store_name_input

new_user_store.errors.full_messages.each do |message|
  puts message
end

