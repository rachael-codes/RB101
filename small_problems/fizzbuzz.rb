# Program: Fizzbuzz
# Date: 01/09/21

# Write a method that takes two arguments: the first is the starting number, and the second 
# is the ending number. Print out all numbers between the two numbers, except if a number is 
# divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if 
# a number is divisible by 3 and 5, print "FizzBuzz".

# EXAMPLE
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# My solution 
def fizzbuzz(num1, num2)
	result = (num1..num2).map do |num|
		if num % 3 == 0 && num % 5 == 0
			"Fizzbuzz"
		elsif num % 3 == 0 
			"Fizz"
		elsif num % 5 == 0
			"Buzz"
		else
			num
		end
	end 

	puts result.join(', ')
end

# LS solution
def fizzbuzz2(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end