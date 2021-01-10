# Program: Double Char (Part 1)
# Date: 01/09/21

# Write a method that takes a string, and returns a new string in which every character is doubled.
def repeater(string)
	string.chars.map { |char| char * 2 }.join
end 

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''