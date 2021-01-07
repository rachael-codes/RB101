# Date: 12/29/20

=begin 

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, 
String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the 
string by analyzing and manipulating the number. 

EXAMPLES
	integer_to_string(4321) == '4321'
	integer_to_string(0) == '0'
	integer_to_string(5000) == '5000'

=end 

# LS way
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
	result = ''
	loop do 
		number, remainder = number.divmod(10)
		result.prepend(DIGITS[remainder])
		break if number == 0
	end 
	result 
end 


# Shorter way 
STR_NUMS = %w[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(num)
  num.digits.reverse.map { |n| STR_NUMS[n] }.join
end