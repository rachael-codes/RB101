# Program: Matching Parentheses
# Date: 01/19/21

# Write a method that takes a string as argument, and returns true if all parentheses in the 
# string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# PEDAC
# input: string
# output: Boolean (true or false)

# explicit: 
# -return true if the number of ( and ) are equal; false otherwise 

# implicit:
# -to be considered a matching pair, the ( must first come before the ); 
#  they cannot be this way: )( (facing away from each other)

# Data structure: Array

# Algo
# -split string into array and delete all values that aren't parentheses 
# -return true if there are no items and false if the count is odd or if the array starts with ')'
# -find the midpoint index of the array and slice array into two halves 
# -reverse the first half in order to get a mirror image of the second 
# -iterate over first half and swap each parentheses marker with its opposite
# -check to see if the altered first half (with its opposites) is equal to the second half
#  -(this would mean they're mirrors of each other) 

def balanced?(str)
  items = str.chars.select { |item| item == '(' || item == ')' }
  if items[0] == ')' || items.count.odd? 
    return false 
  end 

  midpoint = (items.size/2) - 1
  first_half = items.slice(0..midpoint)
  second_half = items.slice(midpoint+1..-1) 
  mirror_image = first_half.reverse.map { |el| el == '(' ?  el = ')' : el = '(' }

  mirror_image == second_half
end 

# LS solution
def balanced2?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

# TEST CASES
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false