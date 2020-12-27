=begin

PROGRAM: Stringy Strings
DATE: 12/24/20 

Write a method that takes one argument, a positive integer, 
and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.

INPUT 
	an integer

OUTPUT EXAMPLES (these should return 'true')
	puts stringy(6) == '101010'
	puts stringy(9) == '101010101'
	puts stringy(4) == '1010'
	puts stringy(7) == '1010101'	

=end

# LS Solution
# ADD TO ANKI FLASHCARDS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end


# My terrible long/convoluted solution...
def stringy2(integer)
	if integer == 1
		1
	elsif integer == 2
		10
	elsif integer == 3
		101
	else
		string = ''
		even_array = []
		odd_array = []

		if integer.even?
			number_of_evens = integer / 2 
			number_of_odds = integer / 2 
		else
			number_of_evens = integer / 2 
			number_of_odds = integer / 2 - 1 
		end 

		number_of_evens.times do 
			even_array << 1 
		end 

		number_of_odds.times do 
			odd_array << 0
		end 

		nums = even_array.product(odd_array).flatten
		nums = nums.slice(0,integer).join("")
	end 
end 

puts stringy(7)