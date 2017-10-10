require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Tasha", last_name: "Urbancic", hourly_rate: 6000)
@store1.employees.create(first_name: "Jenny", last_name: "Lo", hourly_rate: 600)
@store2.employees.create(first_name: "sgdfgs", last_name: "dfggfd", hourly_rate: 30)
@store2.employees.create(first_name: "sdfsd", last_name: "gfdgfdgd", hourly_rate: 600)
@store2.employees.create(first_name: "gdfgfd", last_name: "asdao", hourly_rate: 800)
