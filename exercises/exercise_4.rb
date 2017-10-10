require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey_store = Store.create name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true 
whistler_store = Store.create name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false
yaletown_store = Store.create name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true

puts "Number of stores is #{Store.all.count}"

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each do |store|
  puts "Store #{store.name} has an annual revenue of $#{store.annual_revenue}"
end

@womens_stores = Store.where mens_apparel: false, womens_apparel: true

@womens_stores.each do |store|
  if store.annual_revenue < 1000000
    puts "Store #{store.name} has an annual revenue of $#{store.annual_revenue}"
  end
end