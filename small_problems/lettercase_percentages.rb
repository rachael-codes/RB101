# Program: Lettercase Percentage Ratio
# Date: 01/19/21 

# Write a method that takes a string, and then returns a hash that contains 3 entries: 
# one represents the percentage of characters in the string that are lowercase letters, 
# one the percentage of characters that are uppercase letters, 
# and one the percentage of characters that are neither.

# PEDAC 
# input: string
# output: hash 

# explicit: 
# - the string will always contain at least one character
# - first hash value: lowercase percentage
# - second hash value: uppercase percentage
# - third hash value: neither percentage 

# implicit: 
# - neither refers to numbers, punctuation, and SPACES

# Data structures 
# -hash 
# -counts array

# Algo
# -initalize hash with three values: lowercase, uppercase, and neither
# -initialize variable to string size 
# -iterate over string 
#   -use conditional to check if uppercase, add # of uppercase values divided string size to hash
#   -if lowercase, do same (add # of uppercase values / string size to hash)
#   -if neither, do same as above 
# return hash

# My solution 
def letter_percentages2(str)
  result = { lowercase: 0, uppercase: 0, neither: 0 }
  char_count = str.size 
  chars = str.split('')

  chars.each do |char|
    if char =~ /[^A-Za-z]/
      neither_percentage = (chars.count(char)/char_count.to_f * 100).round(1)
      result[:neither] += neither_percentage
    elsif char.upcase == char 
      up_percentage = (chars.count(char)/char_count.to_f * 100).round(1)
      result[:uppercase] += up_percentage
    else 
      down_percentage = (chars.count(char)/char_count.to_f * 100).round(1)
      result[:lowercase] += down_percentage
    end 
  end 
  result 
end 

# LS Solution
def letter_percentages(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  percentages = { lowercase: [], uppercase: [], neither: [] }
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  percentages[:neither] = (counts[:neither] / length.to_f) * 100
end

# TEST CASES 
p letter_percentages('abCdef 123') # == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') # == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') # == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')
