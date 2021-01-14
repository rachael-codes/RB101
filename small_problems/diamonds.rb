# Program: Diamonds
# Date: 01/14/21

# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.

=begin 
input: integer that represents widest part of diamond/middle row 
output: 4-pointed diamonds in an n x n grid 

rules:
	explicit: 
	-argument will always be an odd integer 

	implicit: 
	-each row is 2 stars or smaller larger than the one before/after it 


diamond(9)
    *          #1 
   ***         #3
  *****        #5
 *******       #7
*********      #9
 *******       #7
  *****        #5
   ***         #3
    *          #1 

Algo 
- initialize a star counter and set it to one 

- in a loop...
	- print out the star symbol multipled by the star counter and centered by n 
	- increment stars by two until stars reaches n 

- reset the variables and perform the loop again, but this time decrementing the star variable 
- keep looping until we're back down to one star 
=end 

# Solution 
def diamond(n)
	stars = 1 
	until stars == n 
		puts ("*" * stars).center(n)
		stars += 2
	end 

	stars = n 
	until stars < 1
		puts ("*" * stars).center(n)
		stars -= 2
	end
end

# Further exploration solution: Try modifying your solution so it prints only the outline of the diamond.
def create_row(stars, n)
	row = ''
	middle_spaces_num = stars-2
	side_spaces_num = ((n - stars) / 2)
	
	if stars == 1
		row = ("*" * stars).center(n) 
	else  
		side_spaces_num.times { row << " " }
		row << ("*") 
		row << (" ") * middle_spaces_num 
		row << ("*")
		side_spaces_num.times { row << " " }
	end
	row 
end

def diamond(n)
	stars = 1 
	spaces = 0 
	until stars == n 
		puts create_row(stars, n)
		stars += 2
	end 

	stars = n 
	until stars < 1
		puts create_row(stars, n)
		stars -= 2
	end
end