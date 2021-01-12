# Program: Longest Palindrome

# Note: This was not one of the small practice problems in RB101. However, I completed
#       this exercise while at this level. I made my own solution to this video:
#       https://launchschool.com/blog/watch-others-code-recording-part-2

# Date: 01/11/21 

# Video instructions: Write a method that finds the largest palindrome substring within a string.

# input: string
# output: largest palindrome that is a substring of the inputted string 

def get_substrings(string)
	left_idx = 0
	right_idx = 0 t
	arr = []

	until left_idx == (string.size - 1)
		arr << string[left_idx..right_idx] 
		right_idx += 1
		if right_idx == (string.size - 1)
			left_idx += 1 
			right_idx = left_idx
		end 
	end 

	arr.reject { |el| el.size == 1 }
end 


def get_palindromes(string)
	substrings = get_substrings(string)
	palindromes = substrings.select do |substring|
		substring == substring.reverse 
	end 
	palindromes 
end 

def largest_palindrome(string)
	palindromes = get_palindromes(string)
	longest_pal = palindromes[0]
	palindromes.each do |pal|
		longest = pal if pal.size > longest_pal.size 
	end
	longest_pal
end 

p largest_palindrome("momma") # => "mom"
