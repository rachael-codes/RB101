# Program: Triangle Sides
# Date: 01/20/21

# Program instructions...
=begin 

A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

    To be a valid triangle, the sum of the lengths of the two shortest sides must be greater 
    than the length of the longest side, and all sides must have lengths greater than 0: 
    if either of these conditions is not satisfied, the triangle is invalid.

    Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
    and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on 
    whether the triangle is equilateral, isosceles, scalene, or invalid.

PEDAC

input: 3 integers which represent the 3 lengths of a triangle 
output: a symbol (:equilateral, :isosceles, :scalene, or :invalid)

explicit:
  -each input must be greater than 0, or else :invalid will be returned 
  -to return :equilateral, all 3 input numbers must be equal
  -to return :isosceles, 2 of the numbers must be equal, and the 3rd is different 
    -the sum of the two smaller numbers must be greater than the length of the largest number
      (even if the largest number is equal to another number) 
  -to return :scalene, all 3 sides will be a different length 
    -the sum of the two smaller numbers must be greater than the length of the largest number
      (even if the largest number is equal to another number) 
    -or else, :invalid will be returned 

# Data structure
-sorted array of 3 nums 

# algo
-create sorted array with 3 nums 
-check if any of the inputs == 0; if so return :invalid
-check if all three nums are equal; if so return :equilateral 
-check if all three nums are different AND the largest number is smaller than the other two combined
  -if yes, return :scalene; if no, return :invalid
-check if two of the numbers are the same AND the max number is less than the other two combined
  -if yes, return :isosceles; if no, return :invalid
=end 

# My solution 
def triangle(num1, num2, num3)
  nums = [num1, num2, num3].sort
  nums.any? { |num| return :invalid if num == 0 } 
  return :equilateral if equilateral?(nums) == true 
  nums[2] < nums[1] + nums[0] ? isosceles_or_scalene?(nums) : :invalid
end 

def equilateral?(nums)
  nums[0] == nums[1] && nums[1] == nums[2]
end 

def isosceles_or_scalene?(nums)
  nums[0] == nums[1] || nums[0] == nums[2] || nums[1] == nums[2] ? :isosceles : :scalene
end 

# LS solution
def triangle2(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 1.5) == :isosceles # 2 nums are equal and one num is smaller; 3 + 1.5 > 3 
p triangle(3, 4, 5) == :scalene # 3 + 4 > 5 and all 3 nums are different 
p triangle(3, 1, 1) == :invalid # invalid b/c 1 + 1 > 3 
p triangle(3, 3, 3) == :equilateral # all 3 nums are equal 
p triangle(0, 3, 3) == :invalid # invalid b/c one of the numbers is 0 