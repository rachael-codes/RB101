=begin
	
Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be positive integers. 
Your result should also be an integer.
	
INPUT: an array
OUTPUTS:
		average of all numbers in array in form of integer 

MENTAL MODEL:
	START 
		-initialize total
		-define method
			-iterate over array and add each number to a total 
			-computer total divided by length of array and assign to variable called 'average'
			-convert average to integer and return this value 
	END

=end

# My solution 
def average_calculator(array)
	total = 0.0 
	array.each {|num| total += num }
	total / array.length 
end

# LS solution w/ 'reduce' method
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.length
end

# Another solution
def average2(array)
	(array.sum.to_f/array.length).round(2)
end 

nums = [100, 99, 74, 69, 84] 

puts average_calculator(nums)
puts average(nums)
puts average2(nums)