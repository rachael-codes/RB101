# Program: Rotation Part 2
# Date: 01/11/21

# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume n is always positive.

# my solution 
def rotate_rightmost_digits(int, num)
  new_int = int.to_s.chars
  new_int << new_int[-num] 
  new_int.delete_at(-num-1)
  new_int.join.to_i
end

# LS solution using previously-created rotate_array method 
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(int, num)
  new_int = int.to_s.chars
  new_int[-num..-1] = rotate_array(new_int[-num..-1])
  new_int.join.to_i
end 

# TEST CASES
p rotate_rightmost_digits(735291, 1) == 735291 # THE ITEM AT INDEX -1 REMAINS AT -1
p rotate_rightmost_digits(735291, 2) == 735219 # THE ITEM AT INDEX -2 CHANGES TO -1
p rotate_rightmost_digits(735291, 3) == 735912 # THE ITEM AT INDEX -3 CHANGES TO -1
p rotate_rightmost_digits(735291, 4) == 732915 # THE ITEM AT INDEX -4 CHANGES TO -1
p rotate_rightmost_digits(735291, 5) == 752913 # THE ITEM AT INDEX -5 CHANGES TO -1
p rotate_rightmost_digits(735291, 6) == 352917 # THE ITEM AT INDEX -6 CHANGES TO -1