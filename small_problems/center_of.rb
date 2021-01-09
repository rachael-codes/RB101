# Program: Get the Middle Character
# Date: 01/09/21

# Write a method that takes a non-empty string argument, and returns the middle character or 
# characters of the argument. If the argument has an odd length, you should return exactly one 
# character. If the argument has an even length, you should return exactly two characters.

# First solution (almost same as LS solution)
def center_of(str)
	midpoint = str.size / 2 
	if str.size.even?
		str[midpoint-1..midpoint]
	else  
		str[midpoint]
	end
end 

# Refactored solution 
def center_of(str)
	midpoint = str.size / 2 
	str.size.even? ? str[midpoint-1..midpoint] : str[midpoint]
end 

# TEST CASES
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'