# Program: All Substrings
# Date: 01/09/21

# Write a method that returns a list of all substrings of a string. The returned list should 
# be ordered by where in the string the substring begins. This means that all substrings that 
# start at position 0 should come first, then all substrings that start at position 1, and so 
# on. Since multiple substrings will occur at each position, the substrings at a given position 
# should be returned in order from shortest to longest.

# My solution
def leading_substrings(string)
  result = []
  left_idx = 0 
  right_idx = 0

  until left_idx == string.size 
  	if right_idx != string.size
  		result << string[left_idx..right_idx]
  		right_idx += 1
		else 
			left_idx += 1
			right_idx = left_idx # this resets the right_idx before continuing 
		end 
  end

  result 
end

# LS solution 
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

# TEST CASE
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]