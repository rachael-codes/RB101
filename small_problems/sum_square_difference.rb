# Program: Sum Square - Square Sum
# Date: 01/26/21

# Write a method that computes the difference between the square of the sum of the first n positive 
# integers and the sum of the squares of the first n positive integers.

# input: integer 
# output: integer 

# explicit:
# -find square of 1 + 2 + ... up to n minus 1-squared, 2-squared... up to n

# implicit: 
# -the number will always be positive 

# Data structure 
# first number: (1 + 2 + 3 up to n)**2 
# second number: (1**2 + 2**2 + 3**2 up to n)
# first number - second number

# Algo
# -initialize num1 and num2 to zero 
# -find the sum of 1 up to n and add it to num1
# -iterate over n and keep squaring it; keep adding each square to num2 
# -return the result of num1-squared minus num2 

def sum_square_difference(n)
  num1 = 0
  num2 = 0

  1.upto(n) do |value| 
    num1 += value
    num2 += value**2
  end 

  num1**2 - num2
end

# Another good solution
def sum_sq_difference(int)
	sum1 = (1..int).reduce(:+)**2
	sum2 = (1..int).reduce { |holder, num| holder + (num**2) }
	sum1-sum2
end 

# TEST CASES
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2) #36 - (1 + 4 + 9) 36-14 = 22  
p sum_square_difference(10) == 2640 # (1+2+3+4+5+6+7+8+9+10) 55*55 - (2 + 4 + 9 + 16 + 25 + 36 + 49 + 64 + 81 + 100)
p sum_square_difference(1) == 0 # (1 - 1) = 0
p sum_square_difference(100) == 25164150