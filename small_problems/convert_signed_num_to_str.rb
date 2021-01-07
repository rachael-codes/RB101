
# Date: 12/29/20

=begin 

Write a method that takes a positive integer, a negative integer, or zero, and converts it to a 
string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, 
String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the 
string by analyzing and manipulating the number. 

EXAMPLES
	signed_integer_to_string(4321) == '+4321'
	signed_integer_to_string(-123) == '-123'
	signed_integer_to_string(0) == '0'

=end 

# My way
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string2(number)
	result = ''

	if number == 0
		result == 0 
	elsif number * -1 > 0       #negative number 
		loop do 
			(number * -1), remainder = number.divmod(10)
			result.prepend(DIGITS[remainder])
			break if number == 0
		end 
		result.prepend("-")
	else
		loop do 
			number, remainder = number.divmod(10)
			result.prepend(DIGITS[remainder])
			break if number == 0
		end 
		result.prepend("+")
	end 

	result 
end 


# LS way (better)
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

def signed_integer_to_string(integer)
  return '0' if integer == 0
  integer.positive? ? sign = '+' : sign = '-'
  sign + integer_to_string(integer.abs)
end