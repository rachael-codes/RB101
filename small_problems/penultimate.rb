# Program: The End Is Near But Not Here
# Date: 01/07/21

# Write a method that returns the next to last word in the String passed to it as an argument.
# Words are any sequence of non-blank characters.
# You may assume that the input String will always contain at least two words.

def penultimate(str)
	str.split[-2]
end 

# Further exploration: write a method that retrieves the middle word of a phrase/sentence
# Returns middle two words if number of words in string is even.
def get_middle_word(str)
	result = []
	words = str.split 
	mid = (words.size / 2) 

	words.size.odd? ? result << words[mid] : result << words[mid-1..mid] 

	result.join(' ')
end 
