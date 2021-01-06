# Program: Right Triangles
# Date: 01/05/21

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose 
# sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should 
# have one end at the lower-left of the triangle, and the other end at the upper-right.

# Further exploration: create triangles that originate in different corners 
 
def upper_right_pointing_tri(size)
	star_count = 1
	space_count = size-1

	until star_count > size
		puts (" " * space_count) + ("*" * star_count)
		star_count += 1
		space_count -= 1
	end 
end 

def lower_right_pointing_tri(size)
	space_count = 0
	star_count = size

	until space_count == size 
		puts (" " * space_count) + ("*" * star_count)
		space_count += 1
		star_count -= 1
	end 
end 

def upper_left_pointing_tri(size)
	count = 1

	until count > 5 
		puts ("*" * count) 
		count += 1
	end 
end 

def lower_left_pointing_tri(size)
	count = size 

	until count == 0 
		puts ("*" * count) 
		count -= 1
	end 
end 

def display_a_triangle(angle, size)
	if angle == 'ul'
		upper_left_pointing_tri(size)
	elsif angle == 'll'
		lower_left_pointing_tri(size)
	elsif angle == 'ur'
		upper_right_pointing_tri(size)
	elsif angle == 'lr' 
		lower_right_pointing_tri(size)
	end 
end 

# TEST CASES
display_a_triangle('ul', 4) 
display_a_triangle('ll', 9)
display_a_triangle('ur', 7)
display_a_triangle('lr', 19)