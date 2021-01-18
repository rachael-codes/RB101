# Program: Fibonacci Numbers (Procedural)
# Date: 01/17/21

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# PEDAC
# input: integer that represents index of fibonacci value 
# output: fibonacci value of input index (integer)

# explicit: 
# -compute fibonacci without recursion

# fibonacci: 1 1 2 3 5 8 13 21 34 55 89 ...

# Algo
# -initialize array with 1 and 1
# -initialize two counts to represent the elements at index 0 and index 1
# -iterate over a loop and continuously add elements at indices 0 + 1 then 1 + 2 then 2 + 3, etc.
# -break if the size of the array is equal to the integer 
# -return the last element in the array 

# My solution
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

# LS solution
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

# TEST CASES
p fibonacci(1) == 1
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075