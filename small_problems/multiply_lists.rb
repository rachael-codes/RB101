# Program: Multiply Lists
# Date: 01/07/21

# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
# and returns a new Array that contains the product of each pair of numbers from the arguments 
# that have the same index. You may assume that the arguments contain the same number of elements.

#TEST CASE
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# input: 2 arrays
# output: 1 array 

# ALGO
# - create new array
# - iterate over array 1 and add each to new array
# - iterate over array 2 and add each element multiplied by the current element in the array
# - return the array

# Original solution
def multiply_list(arr1, arr2)
	combined_arr = []
	arr1.each { |el| combined_arr << el }

	arr2.each_with_index do |el, idx|
		combined_arr[idx] = el * combined_arr[idx] 
	end 

	combined_arr
end 

# Further exploration solution w/ zip method
def multiply_list2(arr1, arr2)
	arr1.zip(arr2).map { |x| x.reduce(:*) }
end 