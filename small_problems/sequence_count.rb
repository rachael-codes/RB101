# Program: Sequence Count
# Date: 01/09/21

# Create a method that takes two integers as arguments. 
# The first argument is a count, and the second is the first number of a sequence that your method 
# will create. The method should return an Array that contains the same number of elements as the 
# count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the 
# starting number can be any integer value. If the count is 0, an empty list should be returned.

# My solution 
def sequence(count, initial_num)
	arr = []
	if count == 0 
		arr
	else 
		counter = 1
		until counter == count + 1
			arr << initial_num * counter
			counter += 1
		end
		arr
	end 
end 

# LS solution
def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

# LS solution 2
def sequence(count, first)
  (1..count).map { |value| value * first }
end

# TEST CASES
sequence(5, 1) # == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []