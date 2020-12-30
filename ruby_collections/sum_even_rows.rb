# Date: 12/30/20
# Program: Sum Even Number Rows

=begin
	
Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, 
with the first row containing one integer, the second row containing two integers, the third row 
three integers, and so on. Given an integer representing the number of a particular row, return an 
integer representing the sum of all of the integers in that row.

2                      # row 1		# return: 2

4   6                  # row 2		# return: 10

8   10   12            # row 3		# return: 30

14  16   18  20        # row 4		# return: 68
	
=end

def sum_even_number_row(row_number)
end 

def create_row(start_integer, row_length)
	row_array = []

	#steps 2-4

	row_array
end 


# TEST CASES
# row number: 1 --> sum of integers in row: 2   # 2 = 2
# row number: 2 --> sum of integers in row: 10  # 4 + 6 = 10
# row number: 4 --> sum of integers in row: 68  # 14 + 16 + 18 + 20 = 68

# p sum_even_number_row(1) == 2   # true
# p sum_even_number_row(2) == 10  # true 
# p sum_even_number_row(4) == 68 	# true 

# Start: 2, length: 1 —>       [2]
# Start: 4, length: 2 —>       [4, 6]
# Start: 8, length: 3 —>       [8, 10, 12]

p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]


