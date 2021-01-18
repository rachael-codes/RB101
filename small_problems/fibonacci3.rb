# Program: Fibonacci Numbers (Last Digit)
# Date: 01/17/21

# Program: compute a method that returns the last digit of the nth Fibonacci number

# PEDAC
# input: integer that represents the nth Fibonacci number
# output: the last digit of that nth Fibonacci number

# Algo
# -use fibonacci method from previous exercise to get fibonacci number
# -convert number to string and convert string to array of characters
# -return last element in array

def fibonacci(int)
  return 1 if int <= 2

  arr = [1, 1]
  count1 = 0
  count2 = 1

  until arr.size == int
    arr << arr[count1] + arr[count2]
    count1 += 1
    count2 += 1 
  end 
  arr[int-1]
end 

def fibonacci_last(int)
  fibonacci(int).to_s[-1].to_i
end 

# TEST CASES
p fibonacci_last(15) == 0      # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20) == 5      # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100) == 5     # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) == 1   # -> 1 (this is a 20899 digit number)