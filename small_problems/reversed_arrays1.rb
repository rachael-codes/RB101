# Program: Reversed Arrays (Part 1)
# 01/05/21

# Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
# mutate the Array passed into this method. The return value should be the same Array object.

=begin
PEDAC 

INPUT: array
OUTPUT: same array, mutated

EXPLICIT REQS: 
-reverse elements of array in place and return same object

ALGORITHIM 
- iterate over the array 
- copy the first element and insert it after the last position
- keep doing this until each element in the array has been copied and added to the end 
- delete half the array (to account for the fact that copies were made)

IMPORTANT NOTE ABOUT THESE
Note that our solution here has both a side-effect (in mutating the array passed in to the method) 
and a meaningful return value (it returns the mutated array). Generally, this would be seen as bad 
practice (you want your methods to have either a side-effect, or a meaningful return value).
=end 

# My solution 
def reverse!(list)
	left_idx = 0
	right_idx = -1
	original_size = list.size 

	while left_idx != original_size
		list.insert(right_idx, list[left_idx]) 
		left_idx += 1
		right_idx -= 1
	end 

	original_size.times { list.shift } 
	
	list
end 

# LS Solution 
def reverse(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

# Another good/compact solution
def reverse!(list)
  list.sort! { |a, b| list.index(b) <=> list.index(a) }
end



list = [1,2,3,4]
p reverse!(list)