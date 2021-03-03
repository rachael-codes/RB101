# Program: Group Anagrams 
# LS Small Problems Easy #9 - Question 11
# Date: 03/03/21

# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a different order.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

# PEDAC 
# input: array of strings
# output: array of subarrays of strings; each subarray represents string that are anagrams of each other from the 
#         original input array 

# Algo
# -iterate over words and group by the sorted version of each word 
# -iterate over values and push each value to a result array that will contain all subarrays

def get_anagram_groups(arr)
	group_hash = arr.group_by { |word| word.chars.sort }
	group_hash.each_value.with_object([]) { |anagram_group, result| result << anagram_group } 
end 

# TEST CASE
p get_anagram_groups(words) == [["demo", "dome", "mode"], ["none", "neon"], ["tied", "diet", "edit", "tide"], ["evil", "live", "veil", "vile"], ["fowl", "wolf", "flow"]]


