# Program: Rotation Part 3
# Date: 01/11/21

# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
# Keep the first 2 digits fixed in place and rotate again to 321759. 
# Keep the first 3 digits fixed in place and rotate again to get 321597. 
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# There is an edge case in our problem when the number passed in as the argument has multiple 
# consecutive zeros. Can you create a solution that preserves zeros?

def rotate_rightmost_digits(int, num)
  new_int = int.to_s.chars
  new_int << new_int[-num] 
  new_int.delete_at(-num-1)
  new_int.join # don't change back into integer here so you can handle zeros in max_rotation
end

def max_rotation(number)
	return number if number.to_s.size == 1 
	number_digits = number.to_s.size 
	number_digits.downto(2) do |n|
		number = rotate_rightmost_digits(number, n)
	end 
	number.to_i
end

# TEST CASES
max_rotation(735291) # == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845