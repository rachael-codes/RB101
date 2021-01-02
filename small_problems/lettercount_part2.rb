# 01/02/21
# Program: Letter Counter Part 2
# Part 1: Write a method that takes a string with one or more space separated words and 
# returns a hash that shows the number of words of different sizes.
# Part 2: Update this to exclude non-letters when determining word size.

def word_sizes(string)
	string = cleanup(string)
	string.split.map { |word| word.size }.tally
end 

def cleanup(string)
	string.split.map { |word| word.delete('^a-zA-Z') }.join(" ")
end


