# The SPOT Study Session w/ Iuliu 
# Date: 01/22/21

# Topic: Exploring sort_by

=begin
# What's happening on the backend...
-If the calling object is smaller than the argument, it will return -1
	1 <=> 2 #-1

-If the argument is smaller than the calling object, it will return 1
	1 <=> 0 #1 

-If the calling object is equal to the argument, it will return 0
	1 <=> 1 #0

REMEMBER - sort expects a return value, and items are sorted based on the result of comparing two values
to see whether the return is -1, 0 or 1 
   (-1 results when left one is smaller)
   (0 results when they are equal)
   (1 results when left one is greater)

TAKEAWAY - SORT IS LOOKING AT THE RETURN VALUE!
=end 

# EXAMPLE ONE... 
# (shortest way to to sort_by)
def sort_words_by_length(str)
	words = string.split
	words.sort_by(&:length)
end 
p sort_words_by_length(words)

# EXAMPLE TWO...
number_words = ['zero', 'one', 'two', 'three']
def sort_by_length(number_words)
  (0..3).to_a.sort_by { |number| number_words[number] }
end 
# [1, 3, 2, 0]


