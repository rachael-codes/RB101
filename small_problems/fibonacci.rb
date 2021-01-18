# Program: Fibonacci Numbers Part 1
# Date: 01/15/21

# The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is 
# the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 
# 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:
# 	F(1) = 1
# 	F(2) = 1
# 	F(n) = F(n - 1) + F(n - 2) where n > 2

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

# PEDAC 
# input: integer (n)
# output: integer (the nth Fibonacci number) 

# explicit reqs:
#   -use recursion
# 	-remember:
#   	F(1) = 1
#   	F(2) = 1
#   	F(n) = F(n - 1) + F(n - 2) where n > 2

# implicit reqs:
#   input will always be an integer greater than or equal to 1 

# fibonacci sequence: 1 1 2 3 5 8 13 21 34 55 etc. 

# Algo 
# - conditional:
# -   if n is 1, return 1 
# -   if n is 2, return 1 
# -   else compute fibonacci(n - 1) + fibonacci(n - 2) 

# Original solution 
def fibonacci(n)
  if n == 1
    1
  elsif n == 2
    1
  else 
    fibonacci(n-1) + fibonacci(n-2)
  end 
end 

# Refactored solution
def fibonacci(n)
  n <= 2 ? 1 : fibonacci(n-1) + fibonacci(n-2)
end 

# TEST CASES
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765