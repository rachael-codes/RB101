# Program: Staggered Caps (Part 1)
# Date: 01/06/21

# Write a method that takes a String as an argument, and returns a new String that contains 
# the original value using a staggered capitalization scheme in which every other character 
# is capitalized, and the remaining characters are lowercase. Characters that are not letters 
# should not be changed, but count as characters when switching between upper and lowercase.

# TEST CASES
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin 
PEDAC 

input: string 
output: altered string 

explicit: non-letters aren't altered but count as characters when switching between up and lowercase

ALGO
- iterate over string 
- if index = even, make capital
- if index = odd, make lowercase 
=end 

# My solution
def staggered_case(string)
 result = string.chars.map.each_with_index do |word, index|
   index.odd? ? word.downcase : word.upcase
 end 
  result.join
end

# LS Solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end