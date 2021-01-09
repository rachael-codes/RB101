# Program: Leading Substrings
# Date: 01/09/21

# Write a method that returns a list of all substrings of a string that start at the beginning 
# of the original string. The return value should be arranged in order from shortest to longest 
# substring.

# EXAMPLES
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin 
PEDAC 

input: one string
output: array of substrings of that string 

explicit reqs:
-arrange in order form shortest to longest

ALGO
	- create array to hold substrings
	- iterate over string and add index 0 to array, then index 0-1, then index 0-2... until all 
	  substrings have been added
	- return array
=end 

# My initial solution 
def leading_substrings(string)
	arr = []
	counter = 0

	until counter == string.size 
		arr << string[0..counter] 
		counter += 1
	end 

	arr
end 

# One-line solution 
def leading_substrings(word)
  word.chars.map.with_index { |_, index| word[0..index] }
end

# Another good solution
def leading_substrings(string)
  result = []
  string.size.times do |index|
    result << string[0..index]
  end
  result
end