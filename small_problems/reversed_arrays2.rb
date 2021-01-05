# Program: Reversed Arrays (Part 2)
# 01/05/21

# Write a method that takes an Array, and returns a new Array with the elements of the original list 
# in reverse order. Do NOT modify the original list.

# My solution 
def reverse(list)
	new_list = []
	count_down = -1

	while count >= -list.size
		new_list << list[count_down] 
		count_down -= 1
	end 

	new_list 
end 

# LS solution with reverse_each
def reverse2(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end
# Note: unlike each, reverse_each only applies to arrays 
# Note: unlike each, reverse_each returns a new array 

# Solution with each_with_object
def reverse3(array)
  array.each_with_object([]) do |element, container|
    container.unshift(element)
    container # not necessary; should be deleted 
  end
end
# each_with_object doesn't utilize return value 

# Solution with inject 
def reverse4(array)
  array.inject([]) do |element, container|
    container.unshift(element)
    container # not necessary; should be deleted 
  end
end
# inject doesn't utilize return value 