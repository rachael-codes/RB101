=begin
	
Write a method that returns an Array that contains every other element 
of an Array that is passed in as an argument. 
The values in the returned list should be those values that are in 
the 1st, 3rd, 5th, and so on elements of the argument Array.

EXAMPLES...
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
	
=end

# better way 
def oddities(array)
	array.select.with_index { |value, index| index.even? }
end 

# my first way 
def oddities1(array)
	even_index_array = [] 
	array.each_with_index do |value, index| 
		even_index_array.push(value) if index.even?
	end 
	even_index_array
end 


p oddities([2, 3, 4, 5, 6])
p oddities([123])
p oddities(['abc', 'def'])