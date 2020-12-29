# Date: 12/29/20 

=begin 

Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
A user passes in two numbers, and the calculator will keep computing the sequence until 
some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error. 
Something about the limit variable. What's wrong with the code? Fix it. 

=end 

# What's wrong = the limit variable wasn't visible inside the method. I passed it in, and now it works.

def fib(first_num, second_num, limit)

  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

limit = 15
result = fib(0, 1, limit)
puts "result is #{result}"
