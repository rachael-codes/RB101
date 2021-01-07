# Halvsies
# Date: 01/05/21

=begin 
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. If the original array 
contains an odd number of elements, the middle element should be placed in the first half Array.

TEST CASES
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

=end 

# My solution
def halvsies(arr)
	partition_point = arr.size / 2 
	arr.partition.with_index { |i, idx| idx <= partition_point } 
end 

