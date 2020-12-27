=begin 

# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

INPUT:
		an array of vehicles that gets passed in as a method argument

EXPECTED OUTPUT:
		car => 4
		truck => 3
		SUV => 1
		motorcycle => 2

Mental model:
		-Create a hash with vehicles and #s of occurrence. 
		-Define method and make one mandatory param for array.
		-Use. each to iterate over array 
		-Use .count method to count how many times each item occurs.
		-Print each element alongside its number of occurrences. 

=end 

# 12/21/20

# First attempt 
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(list)
	occurrence_hash = {}

	vehicles.map! { |v| v.downcase } 

	vehicles.each do |v| 
		count = vehicles.count(v) 

		if occurrence_hash.include?(v) != true 
			occurrence_hash[v] = count 
		end 
	end 
	puts occurrence_hash
end 


# Better solution 
def count_occurrences2(list)
	list.map! { |item| item.downcase } 
  list.uniq.each { |item| puts "#{item} => #{list.count(item)}" }
end

count_occurrences2(vehicles)

