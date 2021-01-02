# 01/02/21
# Program: Letter Counter Part 1
# Write a method that takes a string with one or more space separated words and returns a hash that 
# hows the number of words of different sizes.

# My first attempt 
def word_sizes(string)
	counts_array = [] 
	counts_hash = {}

	words = string.split(' ').each { |word| counts_array << word.size }

	counts_array.uniq.each { |x| counts_hash[x] = counts_array.count(x) } 

	counts_hash 
end 

# My second attempt after discovering the tally method
def word_sizes2(string)
	counts_array = [] 
	string.split(' ').each { |word| counts_array << word.size }
	counts_array.tally 
end 

# Even shorter version using the tally method
def word_sizes3(string)
	string.split.map { |word| word.size }.tally
end 


# LS solution 
def word_sizes4(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

# LS notes on their solution above
=begin 
The main goal of this problem is to count the number of words of each size. To do that, we first 
need to obtain a list of the words. Once we have a word, computing its size is easy, but 
incrementing the count for words of that size is slightly trickier. If we initialize counts as
      counts = {}
we will get an exception the first time counts[word.size] += 1 is executed. This is because that 
element doesn't exist, so counts[word.size] returns nil, and nil cannot be added to 1. To fix this, 
we use the default value form of initializing counts:
      counts = Hash.new(0)
Why? This forces any references to non-existing keys in counts to return 0.
=end 

puts word_sizes('Four score and seven.') # == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') # == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") # == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') # == {}