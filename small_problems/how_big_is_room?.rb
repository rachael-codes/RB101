# Program: How big is the room?
# Date: 12/24/20

# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet

SQMETERS_TO_FEET = 10.7639

puts "What is the length of your room (in meters)?"
length = gets.chomp.to_f

puts "What is the length of your room (in meters)?"
width = gets.chomp.to_f

area = length * width 

puts "The area of your room is #{area} meters, or #{area * SQMETERS_TO_FEET.round(2)} feet."