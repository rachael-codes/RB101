# Date: 12/29/20

=begin 

Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. 
How can you make this work without using begin/end/until? 
Note that we're not looking to find the factors for 0 or negative numbers, 
but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

=end 

def factors(number)
  divisor = number
  factors = []

  while divisor > 0 do  
  	factors << divisor if number % divisor == 0 
  	divisor -= 1
  end 

  factors
end

p factors(24)


# Bonus 1
# What is the purpose of the number % divisor == 0 ?
# This is what makes sure what is returned is actually a factor of the number. 

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method 
# (the factors before the method's end)?
# This sets the return value to the factors array.
