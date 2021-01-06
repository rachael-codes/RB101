# Program: Combine Two Lists
# Date: 01/06/21

# Write a method that combines two Arrays passed in as arguments, and returns a new Array that 
# contains all elements from both Array arguments, with the elements taken in alternation.

# My solution
def interleave(arr1, arr2)
	new_arr = []
	count = 0

	until new_arr.size == arr1.size + arr2.size 
		new_arr << arr1[count] < arr2[count]
		count += 1
	end 

	new_arr
end 

# LS solution using each_with_index
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Solution with zip 
def interleave(arr1, arr2)
	arr1.zip(arr2).flatten
end 