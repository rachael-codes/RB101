# Letter Swap
# Date: 01/02/21

=begin
Given a string of words separated by spaces, write a method that takes this string of words and 
returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always 
contain at least one word. You may also assume that each string contains nothing but words and spaces	
=end

def swap(string)
	words = string.split(' ')
	swapped_words = words.each { |word| word[0], word[-1] = word[-1], word[0] }.join(' ')
end 

p swap('Oh what a wonderful day it is') # 'hO thaw a londerfuw yad ti si'
p swap('Abcde') # 'ebcdA'
p swap('a') # 'a'

