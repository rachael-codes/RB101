# Write a method that takes one argument, 
# a string containing one or more words, 
# and returns the given string with words that contain 
# five or more characters reversed. 

# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# 12/23/20 


def reverse_words(string)
	words = string.split(" ") 

	words.each_with_index do |word, index| 
		words[index] = word.reverse if word.length >= 5 
	end 

	words.join(" ")
end 

puts reverse_words("Harry Potter")


# ADD TO ANKI #