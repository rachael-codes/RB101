# Program: Counting Up
# Date: 01/09/21

# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.
# You may assume that the argument will always be a valid integer that is greater than 0.

# My initial solution 
def sequence(num)
	arr = []
	count = 1
	until count > num 
		arr << count
		count += 1
	end 
	arr
end 

# LS solution (very simple)
def sequence(num)
  (1..num).to_a
end

# Further exploration
# What should you do if the argument is -1? Can you alter your method to handle this case?
# response to Further Exploration:
def sequence(num)
  num > 0 ? (1..num).to_a : (num..1).to_a
end