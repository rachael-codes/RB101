# Date: 01/01/21
# RB101 Programming Foundations Lesson 4: Ruby Collections 
#       "Selection and Transformation" 

# Below is a method that doubles numbers if they are odd. What if we wanted to transform the 
# numbers based on their position in the array rather than their value?
# Try coding a solution that doubles the numbers that have odd indices

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# original array is not mutated
my_numbers                      # => [1, 4, 3, 7, 2, 6]

def double_odd_indexed_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do 
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number 

    counter += 1
  end 

  doubled_numbers
end 

p double_odd_indexed_numbers(my_numbers) # => [1, 8, 3, 14, 2, 12]