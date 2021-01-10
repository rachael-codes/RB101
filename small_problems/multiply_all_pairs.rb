# Program: Multiply All Pairs
# Date: 01/07/21

# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
# and returns a new Array that contains the product of every pair of numbers that can be formed 
# between the elements of the two Arrays. The results should be sorted by increasing value.

#TEST CASE
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# My solution 
def multiply_all_pairs(arr1, arr2)
	result_arr = []
	count = 0

	until count == arr1.size 
		arr2.each_with_index do |el| 
			result_arr << arr1[count] * el 
		end
		count += 1
	end 

	result_arr.sort
end

# LS solution #1
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

# LS solution #2 
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

# Another good solution
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |arr| arr.reduce(:*) }.sort
end