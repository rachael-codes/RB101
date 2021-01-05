=begin
	
Date: 12/28/20

Write a method that takes an Array of numbers, and returns an Array with the 
same number of elements, and each element has the running total from the original Array.

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

=end

# My solution 
def running_total(array)
	total_array = []

	total = 0
	count = 0

	until count == array.length 
		total += (array[count])
		total_array << total 
		count += 1
	end

	total_array 
end 


# LS solution
def running_total2(array)
  sum = 0
  array.map { |value| sum += value }
end