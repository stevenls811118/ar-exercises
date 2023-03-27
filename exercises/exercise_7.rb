require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_at_least_one_apparel,

  def must_carry_at_least_one_apparel
    if mens_apparel == nil || womens_apparel == nil
      errors.add(:apparel, "apparel can not be nil")
    end
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel, "Must carry at least one apparel")
    end
  end
end

puts "Please type in a store name"
input_name = gets.chomp

input_store = Store.create(name: input_name)

# puts input_store.errors.messages

input_store.errors.messages.each do |key, value|
  puts "#{key}: #{value}"
end

