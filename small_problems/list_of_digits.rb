# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.


def digit_list(num)
	num.to_s.each_char.map { |ch| ch.to_i }
end 

p digit_list(1234)
