# PEDAC practice with easy problem 
# 12/21/20 

=begin 
inputs:
    a string
    a positive integer
output:
    the string printed out as many times as the integer indicates

example: the arguments 'hello' and '3' should produce...
    hello
    hello
    hello

mental model:
1. DEFINE a function that takes two inputs 
2. PRINT the string as many times as integer indicates using * operator 
       Note: don't forget the \n 

=end 

def repeat(word, num)
	puts "#{word}\n" * num
end 

repeat('hey', 5)