# Program: Next Featured Number Higher than a Given Value
# Date: 01/21/21

# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, 
# and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not 
# (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number 
# that is greater than the argument. 
# Return an error message if there is no next featured number.

# PEDAC 

# input: integer
# output: integer that represents the first "featured number" that comes after our input integer

# explict
# -a featured number is:
   # - odd 
   # - a multiple of 7 
   # - has digits that occur exactly one each 
# -if a featured num isn't found, return a specific error message

# Data structure: array 

# Algo
# -intitalize a loop and a counter 
#   -within the loop, check if the integer + counter meets the three explicit criteria above
#    if it doesn't, continue the loop
#    if it does, return the number plus the counter and break out of the loop 
#  -return "There is no possible number that fulfills those requirements" for any number that >= 9999999999

def featured(n)
  count = 1

  while n < 9_999_999_999
    if (n + count).odd? &&
       (n + count) % 7 == 0 &&
       (n + count).digits == (n + count).digits.uniq 
      return (n + count)
      break 
    else 
      count += 1
    end 
  end 

  "There is no possible number that fulfills those requirements."
end 

# TEST CASES
p featured(12) #== 21 
p featured(20) == 21 
p featured(21) == 35 
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements