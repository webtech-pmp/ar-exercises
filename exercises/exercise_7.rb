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

Employee.all.each do |e_info|
  if e_info.first_name && e_info.last_name && e_info.hourly_rate > 40 && e_info.hourly_rate < 200 && e_info.store_id
    puts "Employee id: #{e_info.id} has all the required information."
  else
    puts "Employee id: #{e_info.id} does not have the required information, please re-enter."
  end
end

Store.all.each do |s_info|
  if s_info.name.length >= 3 && s_info.annual_revenue.to_i >= 0 && (s_info.mens_apparel || s_info.womens_apparel)
    puts "Store id: #{s_info.id} has all the required information."
  else
    puts "Store id: #{s_info.id} does not have the required information, please re-enter."
  end
end

puts "Entering new store information >"
puts "Please enter a store name:"
name = $stdin.gets.chomp
puts "Please enter the store annual revenue:"
annual_revenue = $stdin.gets.chomp
puts "Does this store carry men's apparel? (true or false):"
mens_apparel = $stdin.gets.chomp
puts "Does this store carry women's apparel? (true or false):"
womens_apparel = $stdin.gets.chomp