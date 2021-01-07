=begin 

Date: 12/28/20 

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
and then computes the sum of those multiples. 

For instance, if the supplied number is 20, the result should be 98 
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

=end 

# one way (which seems to be the most clear way imo)
def multiples_3_5(num)
	arr = []
	(0..num).each { |num| arr << num if num % 3 == 0 || num % 5 == 0 } 
	arr.inject(:+)
end 

puts multiples_3_5(20)

# another way (which seems less clear but more condense)
def multiples_3_5_v2(max_num)
	(0..max_num).select { |n| (n % 3).zero? || (n % 5).zero? }.sum
end 

puts multiples_3_5(20)