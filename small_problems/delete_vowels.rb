# Program: Delete Vowels
# Date: 01/04/21
# Write a method that takes an array of strings, and returns an array of the same string values, except 
# with the vowels (a, e, i, o, u) removed.

# my solution 
def remove_vowels2(arr)
  arr.map {|i| i.gsub(/[aeiou]/i, '')}
end

# LS solution (better)
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

# TEST CASES
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) # == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) # == ['BC', '', 'XYZ']