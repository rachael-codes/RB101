=begin

Write a method that takes one argument, a string, and returns 
a new string with the words in reverse order.

Example:
		Hey girl what's up?
		up? what's girl Hey

=end

def reverse_sentence(string)
	words = string.split(" ") 
	count_up = 0
	count_down = words.length - 1 #3 
	midpoint = words.length/2  #2 

	loop do 
		words[count_down], words[count_up] = words[count_up], words[count_down]

		break if count_down < midpoint+1 

		count_down -= 1 
		count_up += 1  	
	end 
	puts words
end 


reverse_sentence("Do you like ripe bananas?")