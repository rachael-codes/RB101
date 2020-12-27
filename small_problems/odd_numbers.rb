# Program: Odd Numbers
# Date: 12/24/20

# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

nums = 1..99
puts nums.select { |num| num.odd? } 