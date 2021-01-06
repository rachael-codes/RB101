# Program: Capitalize Words 
# Date: 01/06/21

# Write a method that takes a single String argument and returns a new string that contains the 
# original value of the argument with the first character of every word capitalized and all other 
# letters lowercase.

# TEST CASES
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# input: string
# output: new string with each word capitalized 

# algo: 
# - split words and iterate over array of words, calling capitalize on each
# - return array, joined into one string

# my solution
def word_cap(string)
	words = string.split.map { |word| word.capitalize }
	words.join(" ")
end 

# LS even more condense solution
def word_cap2(words)
  words.split.map(&:capitalize).join(' ')
end

# further exploration: how would you did this without the capitalize method?
def word_cap3(string)
	words = string.downcase.split
	new_words = []

	words.each do |word|
		if word.start_with?(/[a-z]/)
			new_words << word[0].upcase! + word[1..-1]
		else 
			new_words << word
		end 
	end 

	new_words.join(' ')
end 