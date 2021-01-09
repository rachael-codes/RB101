# Program: Double Char (Part 1)
# Date: 01/09/21

# Write a method that takes a string, and returns a new string in which every consonant character 
# is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
	result = ''
	string.each_char do |char| 
		if CONSONANTS.include?(char.downcase) 
			result << char * 2
		else 
			result << char
		end 
	end 
	result
end 

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""