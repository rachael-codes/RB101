# Launch School - Watching Others Code Video 4 
# https://launchschool.com/blog/watch-others-code-recording-part-4

# Program: Generate English math problems 
# Date: 01/12/21

# PART 1
# Write a program that will generate an English math problem given an input of the length.

OPERATORS = %w(plus minus times divided)
NUMBERS = %w(one two three four five six seven eight nine)

def mathphrase(number_of_operations)
	operations = [NUMBERS.sample]
	number_of_operations.times do |num|
		operations << OPERATORS.sample
		operations << NUMBERS.sample 
	end 
	operations.join(' ').gsub('divided', 'divided by')
end 

# TEST CASES
mathphrases(1) # => "five minus two"
mathphrases(3) # => "one divided by three plus five times one"

# PART 2 
# Write a program that will generate 10 random English math problems of varying lengths.
10.times do |num|
	length = (1..7).to_a.sample
	puts "#{num+1}. #{mathphrase(length)}"
end