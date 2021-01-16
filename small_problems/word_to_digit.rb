# Program: Word to Digit
# Date: 01/15/21

# Write a method that takes a sentence string as input, and returns the same string with any 
# sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 
# 'nine' converted to a string of digits.

#PEDAC 
# input: string
# output: altered string 

# explicit reqs: convert integer words to digits 
# implicit reqs: include a space between each digit 

# Algo
# - create a hash of key-value pairs, where the keys are integer words and the values are corresponding digits
# - split string into sentences by dividing where there is a period 
# 	- split sentences into words and iterate over each word...
# 	- if the word is an integer word, perform transformation so the integer word is replaced by its corresponding digit in the hash 
# - rejoin words with a space between each 
# - loop through each sentence and re-add the period to the end of each 
# - rejoin the sentences and return 

# My original solution 
DIGIT_HSH = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
                'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 } 

def word_to_digit(str)
  sentences = str.split('.')
 	sentences.map! do |sentence|
 		words = sentence.split(' ')
 		words.map! do |word|
 			if DIGIT_HSH.keys.include?(word)
 				word = DIGIT_HSH[word]
 			else
 				word 
 			end 
 		end 
 		words.join(' ')
 	end 

	sentences.each do |sentence|
		sentence << '.'
	end 
	sentences.join(' ')
end    

# Solution that I like better 
DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
def word_to_digit(sentence)
  sentence.split.map do |word|
    DIGITS.each_with_index do |digit, idx|
      word = word.gsub(digit, idx.to_s) if word.match(digit)
    end
    word
  end.join(' ')
end

# TEST CASE
p word_to_digit('Please call me at five five five one two three four. Thanks.')