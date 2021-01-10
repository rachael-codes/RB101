# Program: Always Return Negative
# Date: 01/09/21

# Write a method that takes a number as an argument. If the argument is a positive number, 
# return the negative of that number. If the number is 0 or negative, return the original number.

# My solution (same as LS)
def negative(int)
	int > 0 ? -int : int 
end 

# Another solution from LS
def negative(number)
  -number.abs
end

# TEST CASES 
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

