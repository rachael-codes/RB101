# 01/02/21
# Clean up the words

=begin 
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic 
characters, write a method that returns that string with all of the non-alphabetic characters 
replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have 
one space in the result (the result should never have consecutive spaces).
=end 



def cleanup_regex(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end



ALPHABET = ('a'..'z').to_a

def cleanup(text)
	result = []

	text.chars do |char|
		if ALPHABET.include?(char) 
			result.push(char)
		else
			result.push(' ') unless result.last == ' '
		end
	end

	result.join
end 

p cleanup("---what's my +*& line?") # == ' what s my line '