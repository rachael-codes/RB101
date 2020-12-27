# Searching 101
# Date: 12/24/20

# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongst the first 5 numbers.

six_numbers = []
count = 0

loop do 
	puts "Give me a number: "
	number = gets.chomp.to_i
	six_numbers << number
	count += 1
	break if count == 6 
end 

first_five_numbers = six_numbers.slice(0, 5)
last_number = six_numbers[-1]

if first_five_numbers.include?(last_number)
	puts "#{last_number} appears in #{first_five_numbers}." 
else
	puts "#{last_number} does not appear in #{first_five_numbers}." 
end 

