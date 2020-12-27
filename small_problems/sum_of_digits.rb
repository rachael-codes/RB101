# Program: Sum of Digits
# Date: 12/24/20
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# My solution 
def sum(num)
	result = 0
	num.to_s.each_char { |char| result += char.to_i } 
	result 
end 

#Even more compact but maybe less readable one-line solution from LS 
def sum2(num)
	num.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(64)
puts sum2(64)

