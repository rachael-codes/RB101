# Program: Seeing Stars
# Category: Advanced
# Date: 01/26/21

# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is 
# supplied as an argument to the method. 

# The smallest such star you need to handle is a 7x7 grid.

# PEDAC

# input: integer
# output: pattern of stars

# explicit:
# -input integer is odd 
# -input integer = width 
# -input integer = height
# -small possible input = 7 

# implicit:
# every other row contains three stars, and spacing varies 
# the two rows immediately above and below the center row contain three stars centered by n with no spaces in-between


# Algo
# -find midpoint by getting n/2 + 1 
	# - on this line, output n stars and no spaces
	# -on this line minus one and this line plus one, output 3 stars centered by n 

# Solution
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size # middle row 
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end


#EXAMPLE
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *