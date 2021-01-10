# Program: Uppercase Check
# Date: 01/09/21

# Write a method that takes a string argument, and returns true if all of the alphabetic 
# characters inside the string are uppercase, false otherwise. 
# Characters that are not alphabetic should be ignored.

# My initial solution (overly complicated/unnecessary)
UPPERCASE = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def uppercase?(str)
	str = str.gsub(/[^a-z]/i, '')
	str.chars.all? { |char| UPPERCASE.include?(char) } 
end 

# LS solution
def uppercase?(string)
  string == string.upcase
end


# TEST CASES
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true