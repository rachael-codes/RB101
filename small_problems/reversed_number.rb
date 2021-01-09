# Program: Reverse the Digits in a Number
# Date: 01/09/21

# Write a method that takes a positive integer as an argument and returns that number with its 
# digits reversed. 

# Examples:

def reversed_number(num)
	num.to_s.reverse!.to_i
end 

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1