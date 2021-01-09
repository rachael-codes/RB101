# Program: Palindromic Substrings
# Date: 01/09/21

# Write a method that returns a list of all substrings of a string that are palindromic.
# The return value should be arranged in the same sequence as the substrings appear in the string. 
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# you should consider all characters and pay attention to case; 
# that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are.

# Assume that single characters are not palindromes.

# EXAMPLES 
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# My solution 
def find_substrings(string)
  substrings = []
  left_idx = 0 
  right_idx = 0

  until left_idx == string.size 
  	if right_idx != string.size 
  		substrings << string[left_idx..right_idx] 
  		right_idx += 1
		else 
			left_idx += 1
			right_idx = left_idx # this resets the right_idx 
		end 
  end

  substrings
end

def find_palindromes(string)
	substrings = find_substrings(string)
	palindromes = []

	substrings.each do |str| 
  	palindromes << str if str == str.reverse && str.size > 1
  end

  palindromes 
end 

