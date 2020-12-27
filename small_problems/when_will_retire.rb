# Program: When will I retire?
# Date: 12/24/20 

# Build a program that displays when the user will retire and how many years 
# she has to work till retirement.

=begin 
	What is your age? 30
	At what age would you like to retire? 70

	It's 2016. You will retire in 2056.
	You have only 40 years of work to go!
=end 

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year 
years_until_retirement = retirement_age - current_age 
retirement_year = current_year + years_until_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_until_retirement} years of work to go!"