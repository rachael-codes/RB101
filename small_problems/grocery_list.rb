# Program: Grocery List
# Date: 01/09/21

# Write a method which takes a grocery list (array) of fruits with quantities and converts it into 
# an array of the correct number of each fruit.

# My solution 
def buy_fruit(arr)
	result = []

	arr.each do |sub_arr| 
		sub_arr[1].times do 
			result << sub_arr[0] 
		end
	end
	
	result 
end 

# A good compact solution
def buy_fruit(arr)
  arr.map { |sub_arr| [sub_arr[0]] * sub_arr[1] }.flatten
end

# LS one-line solution
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# TEST CASE
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]