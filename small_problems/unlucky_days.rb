# Program: Unlucky Days
# Date: 01/20/21

# Write a method that returns the number of Friday the 13ths in the year given by an argument. 
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern 
# Gregorian Calendar) and that it will remain in use for the foreseeable future.

#PEDAC 
# input: integer that represents a year 
# output: integer that represents number of Friday the 13ths that year 

# Algo 
# -use Date/time class 
# -initialize a counter to 1 to represent first month in year
# -initialize a total_friday_the_13ths variable to 0 
# -create a loop
#   -loop through months 12 times with format (year, month_counter, 13) and check if it was Friday
#   -if so, add 1 to the value contained within the total_friday_the_13ths variable 
# -return total_friday_the_13ths

# My solution 
require 'date' 
def friday_13th(year)
  month = 1
  total_friday_the_13ths = 0

  12.times do 
    date = Date.new(year, month, 13)
    total_friday_the_13ths += 1 if date.friday? == true 
    month += 1
  end 
  
  total_friday_the_13ths
end 

# Another good solution
def friday_13th(year)
  result = 0
  1.upto(12) { |month| result += 1 if Time.local(year, month, 13).friday? }
  result
end

# TEST CASES
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2