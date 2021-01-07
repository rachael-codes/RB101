# ASCII String Value
# Date: 12/29/20

=begin 
Write a method that determines and returns the ASCII string value of a string that is 
passed in as an argument. The ASCII string value is the sum of the ASCII values of every 
character in the string. (You may use String#ord to determine the ASCII value of a character.)
=end 

# My way = exact same as LS solution 
def ascii_value(string)
	sum = 0
	string.each_char { |char| sum += char.ord }
	sum 
end 

# Even simpler way 
def ascii_value2(string)
	string.sum(&:ord)
end 

# TEST CASES 
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

