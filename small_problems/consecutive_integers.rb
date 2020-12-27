# Program: Sum or Product of Consecutive Integers
# Date: 12/24/20

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers between 
# 1 and the entered integer.

# My solution w/o inject method 
def get_sum_or_product2
	num = nil
	loop do 
		puts ("Enter a number greater than 0: ")
		num = gets.chomp
		break if num.to_i > 0 
		puts ("You MUST enter a number greater than 0.")
	end 

	sum_or_product = nil
	loop do 
		puts ("Do you want to determine the sum or product of all numbers between 1 and #{num}?")
		puts ("Input s for sum or p for product.")
		sum_or_product = gets.chomp
		break if sum_or_product.downcase == 's' || sum_or_product.downcase == 'p'
		puts ("You MUST choose s or p.")
	end

	numbers = 1..num.to_i

	if sum_or_product == 's'
		puts "The sum of the integers between 1 and #{num} is #{numbers.sum}." 
	else
		product = 1
		numbers.each { |num| product *= num }
		puts "The product of the integers between 1 and #{num} is #{product}." 
	end 
end 

# Solution that uses inject method (recommended by LS)
def get_sum_or_product
	num = nil
	loop do 
		puts ("Enter a number greater than 0: ")
		num = gets.chomp
		break if num.to_i > 0 
		puts ("You MUST enter a number greater than 0.")
	end 

	sum_or_product = nil
	loop do 
		puts ("Do you want to determine the sum or product of all numbers between 1 and #{num}?")
		puts ("Input s for sum or p for product.")
		sum_or_product = gets.chomp
		break if sum_or_product.downcase == 's' || sum_or_product.downcase == 'p'
		puts ("You MUST choose s or p.")
	end

	numbers = 1..num.to_i

	if sum_or_product == 's'
		puts "The sum of the integers between 1 and #{num} is #{numbers.inject(:+)}." 
	else
		puts "The product of the integers between 1 and #{num} is #{numbers.inject(:*)}." 
	end 
end 

get_sum_or_product()