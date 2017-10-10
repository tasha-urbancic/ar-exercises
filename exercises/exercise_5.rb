require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum(:annual_revenue)
@average_store_revenue = @total_revenue / Store.all.count
@number_stores_over_1mil = Store.where("annual_revenue > 1000000").count

puts "total_revenue #{@total_revenue}, average_store_revenue #{@average_store_revenue}, number_stores_over_1mil #{@number_stores_over_1mil}"