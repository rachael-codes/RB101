# Program: Sum of Sums
# Date: 01/08/21

# Write a method that takes an Array of numbers and then returns the sum of the sums 
# of each leading subsequence for that Array. You may assume that the Array always 
# contains at least one number.

# TEST CASES 
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin 
Algo 
- initialize final result to zero 
- initialize counter to the argument array's size and index to zero 
- iterate over array and add the element at index 0 x times, 
  where x is equal to the length of the array
- decrement x by one and increment index by one 
- continue... add the element at index 1 to the new array the new x # of times
- continue with element at index 2 and so on until array has been iterated through
- return result 
=end 

# my solution
def sum_of_sums(arr)
	result = 0
	count = arr.size 
	idx = 0

	until count == 0 
		count.times { result += arr[idx] } 
		count -= 1 
		idx += 1
	end 

	result 
end 

# one-line solution
def sum_of_sums(arr)
  arr.map.with_index {|_, index| arr[0..index].sum }.sum
end
