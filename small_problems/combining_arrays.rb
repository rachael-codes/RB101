# Program: Combining Arrays
# Date: 01/05/21

# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the 
# values from the argument Arrays. There should be no duplication of values in the returned Array, 
# even if there are duplicates in the original Arrays.

# one way 
def merge(arr1, arr2)
	(arr1 + arr2).uniq
end 

# simpler (LS) way
def merge(array_1, array_2)
  array_1 | array_2
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]