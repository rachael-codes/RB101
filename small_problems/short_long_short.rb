=begin 

# Date: 12/28/20 

Write a method that takes two strings as arguments, determines the longest of the two strings, 
and then returns the result of concatenating the shorter string, the longer string, 
and the shorter string once again. 

You may assume that the strings are of different lengths.

EXAMPLES
	short_long_short('abc', 'defgh') == "abcdefghabc"
	short_long_short('abcde', 'fgh') == "fghabcdefgh"
	short_long_short('', 'xyz') == "xyz"

MENTAL MODEL
	-DEFINE a method that takes two strings as arguments
	-Compare length of two strings
	-Concatenate the shorter string + longer string + shorter string 

=end 

# Way 1: most clear way/probably best
def concat_strings(string1, string2)
	if string1.length > string2.length 
		string2 + string1 + string2 
	else
		string1 + string2 + string1
	end
end 

puts concat_strings('abc', 'rachael')


#Way 2: one-line method using ternary operator 
def concat_strings2(str1, str2)
	str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1 
end 

puts concat_strings2('def', 'rachael')