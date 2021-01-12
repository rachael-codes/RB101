# Program: Rotation Part 1
# Date: 01/11/21

# Write a method that rotates an array by moving the first element to the end of the array. 
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Algo
# - duplicate array or string and assign to a variable 
# - take the element at index 0 and append it to end of new array or string
# - slice new array or string starting at index 1 and going through end of array

# TEST CASES
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# LS solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

# My solution
def rotate_array(arr)
	new_arr = arr.dup 
	new_arr << new_arr[0]
	new_arr.slice(1..-1)
end 

# Further exploration #1 
# Write a method that rotates a string instead of an array. 
def rotate_string(string)
	new_string = string.dup
	new_string << new_string[0]
	new_string.slice(1..-1)
end 

# Further exploration #2 
# Do the same thing for integers. 
def rotate_integer(int)
	new_int = int.dup.to_s
	new_int << new_int[0]
	new_int.slice(1..-1).to_i
end
