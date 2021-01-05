# Fibonacci Number Location By Length 
# Date: 01/04/21

def find_fibonacci_index_by_length2(digit_length)
	return 1 if digit_length == 1

	arr = [1, 1]
	counter = 0

	until arr[-1].to_s.size == digit_length  
		arr << arr[counter] + arr[counter+1]
		counter += 1
	end 

	arr.size
end 


# TEST CASES
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847