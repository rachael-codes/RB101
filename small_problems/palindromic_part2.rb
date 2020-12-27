=begin 

Write a method that returns true if the string passed as an argument 
is a palindrome, false otherwise. A palindrome reads the same forward and backward. 

EXAMPLES 
	palindrome?('madam') == true
	palindrome?('Madam') == true         # (case doesn't matter)
	palindrome?("madam i'm adam") == true # (characters don't matter

=end 

def palindrome?(word)
	word == word.reverse ? true : false
end 


# my way 
def palindrome2?(string)
	palindrome = string.downcase.delete(" ").delete(",").delete("'").delete("-")
	palindrome?(palindrome)
end 

# LS way that has you delete anything that's not a letter or digit 
def palindrome3?(string)
	palindrome = string.downcase.delete('^a-z0-9')
	palindrome?(palindrome)
end 


puts palindrome3?('madam')
puts palindrome3?('Madam')
puts palindrome3?("madam i'm adam")
