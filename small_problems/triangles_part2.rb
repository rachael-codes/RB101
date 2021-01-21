# Program: Triangles 2
# Date: 01/20/21

=begin 
A triangle is as follows: 
    right -  One angle of the triangle is a right angle (90 degrees)
    acute -  All 3 angles of the triangle are less than 90 degrees
    obtuse - One angle is greater than 90 degrees.

All 3 must equal 180, and each must be greater than 0. 
Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol 
:right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, 
obtuse, or invalid triangle.

input: 3 integers that represent degrees in a triangle
output: symbol that represents the type of triangle or invalid 

explicit: 
- all three nums must equal 180
- each num must be greater than 0 
- if one of the nums is 90, return right
- if all 3 nums are less than 90, return acute
- if one num is greater than 90, return obtuse 

Data structure - array

Algo
- put 3 integers into an array
- return :invalid if any array elements is 0 or sum of array doesn't equal 180
- conditional
  - return right if any array element is 90
  - return acute if all array elements are less than 90
  - else, return obtuse 
=end 

def triangle(num1, num2, num3)
  arr = [num1, num2, num3]

  case 
  when arr.reduce(:+) != 180, arr.include?(0)
    :invalid 
  when arr.include?(90)
    :right
  when arr.all? { |el| el < 90 }
    :acute 
  else 
    :obtuse 
  end 
end 

# TEST CASES
p triangle(60, 70, 50) == :acute # all nums are less than 90
p triangle(30, 90, 60) == :right # one num is 90
p triangle(120, 50, 10) == :obtuse # one num is greater than 90
p triangle(0, 90, 90) == :invalid # one num is zero => invalid 
p triangle(50, 50, 50) == :invalid # nums don't equal 180 => invalid 