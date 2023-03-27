require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :stores
end

# puts "#{@store4.inspect}"
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Steven", last_name: "Shi", hourly_rate: 105)
@store4.employees.create(first_name: "Jay", last_name: "Zhu", hourly_rate: 70)
@store5.employees.create(first_name: "Rolin", last_name: "Lee", hourly_rate: 55)
@store6.employees.create(first_name: "Scott", last_name: "Liang", hourly_rate: 58)
@store1.employees.create(first_name: "Alex", last_name: "Wang", hourly_rate: 49)
@store2.employees.create(first_name: "Denny", last_name: "Ma", hourly_rate: 55)
@store4.employees.create(first_name: "Tony", last_name: "Scott", hourly_rate: 62)
@store5.employees.create(first_name: "Andrea", last_name: "Jin", hourly_rate: 95)
@store6.employees.create(first_name: "Michael", last_name: "Shi", hourly_rate: 87)
@store1.employees.create(first_name: "Penny", last_name: "Owen", hourly_rate: 59)
@store2.employees.create(first_name: "Jordan", last_name: "Star", hourly_rate: 62)