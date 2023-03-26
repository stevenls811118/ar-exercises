require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue for the entire company is #{total_revenue}"

stores = Store.all
stores.each do |i|
  puts "#{i.annual_revenue}"
end

good_revenues_number = Store.where("annual_revenue >= 1000000").count

puts good_revenues_number