# Program: Does My List Includes This?
# Date: 01/05/21

# Write a method named include? that takes an Array and a search value as arguments. This method 
# should return true if the search value is in the array, false if it is not. 
# You may not use the Array#include? method in your solution.

# TEST CASES
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# My original solution
def include?(array, search_value)
	if array.select { |el| el == search_value }.empty?
		false 
	else 
		true 
	end 
end 

# My refactored solution
def include?(array, search_value)
	!array.select { |el| el == search_value }.empty?
end 

# Favorite way that wasn't mine 
def include?(array, num)
  array.any? { |element| element == num }
end

# LS way #1 
def include?(array, value)
  !!array.find_index(value)
end

# LS way #2 
def include?(array, value)
  array.each { |element| return true if value == element }
  false
end