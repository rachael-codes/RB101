# Date: 01/01/21
# RB101 Programming Foundations Lesson 4: Ruby Collections 
#       "Selection and Transformation" 

# The code below multiplies each element in the collection by 2.
# The double_numbers method returned a new array with every element doubled, and that the original 
# array is not mutated. Can you implement a double_numbers! method that mutates its argument?

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

def double_numbers2(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] *= 2 
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers2(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers