# Program: Staggered Caps (Part 2)
# Date: 01/06/21

# ORIGINAL INSTRUCTIONS
# Write a method that takes a String as an argument, and returns a new String that contains 
# the original value using a staggered capitalization scheme in which every other character 
# is capitalized, and the remaining characters are lowercase. Characters that are not letters 
# should not be changed, but count as characters when switching between upper and lowercase.

# UPDATED INSTRUCTIONS 
# Modify the method from the previous exercise so it ignores non-alphabetic characters when 
# determining whether it should uppercase or lowercase each letter. The non-alphabetic characters 
# should still be included in the return value; they just don't count when toggling the desired 
# case.

# LS solution
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# My favorite solution
def staggered_case(string)
  result = ''
  switch = "off"
  string.each_char do |char|
    if char =~ /[a-zA-Z]/
      if switch == "off"
        result << char.upcase
        switch = "on"
      else
        result << char.downcase
        switch = "off"
      end
    else
      result << char
    end
  end

  result
end

