=begin 

Write a method that returns true if the string passed as an argument 
is a palindrome, false otherwise. A palindrome reads the same forward and backward. 
For this exercise, case matters as does punctuation and spaces.

EXAMPLES 
	palindrome?('madam') == true
	palindrome?('Madam') == false          # (case matters)
	palindrome?("madam i'm adam") == false # (all characters matter)
	palindrome?('356653') == true

=end 

def palindrome?(word)
	word == word.reverse ? true : false
end 


puts palindrome?('madam')
puts palindrome?('Madam')
