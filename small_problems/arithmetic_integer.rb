=begin 
Write a program that prompts the user for two positive integers, 
and then prints the results of the following operations on those 
two numbers: 

	addition
	subtraction
	product
	quotient
	remainder
	power

(Do not worry about validating the input.)
=end 

def prompt(message)
	puts "==> #{message}"
end 

num1= nil
loop do 
	prompt("Give me a positive integer: ")
	num1 = gets.chomp.to_i
	break if num1 > 0 
	puts ("You must choose a number greater than 0.")
end 

num2 = nil
loop do 
	prompt("Give me another positive integer: ")
	num2 = gets.chomp.to_i
	break if num2 > 0 
	puts ("You must choose a number greater than 0.")
end 

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")