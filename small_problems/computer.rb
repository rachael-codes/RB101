# Program: Computer 
# Date: 01/11/21

# Note: This was not one of the small practice problems in RB101. However, I completed
#       this exercise while at this level. I made my own solution to Part 1 of this video:
# https://launchschool.com/blog/watch-others-code-recording-part-3

# Program: takes an English phrase and returns the value in integer form 

NUM_HASH = { "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, 
						 "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "zero" => 0 } 

# Solution to problem 1 
def computer(string)
	elements = string.split 
	num1 = elements.first 
	num2 = elements.last 
	operator = elements[1..-2].join.downcase 

	case operator 
	when 'plus'  then NUM_HASH[num1] + NUM_HASH[num2]
	when 'minus' then NUM_HASH[num1] - NUM_HASH[num2]
	when 'times' then NUM_HASH[num1] * NUM_HASH[num2]
	else 							NUM_HASH[num1] / NUM_HASH[num2].to_f
	end 
end 

computer("two plus two") # => 4
computer("seven minus six") # => 1
computer("eight times eight") # => 64 
computer("six divided by four") # => 1.5 



