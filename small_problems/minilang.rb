# Program: Stack Machine Interpretation
# Date: 01/14/21 

# Write a method that implements a miniature stack-and-register-based programming language that 
# has the following commands:

# n 		Place a value n in the "register". Do not modify the stack.
# PUSH  Push the register value on to the stack. Leave the value in the register.
# ADD 	Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB 	Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT 	Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV 	Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD 	Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP 	Remove the topmost item from the stack and place in register
# PRINT Print the register value

=begin
PEDAC 

input: string of commands and integers 
output: result of commands 

explicit: 
	- all operations are integer operations (so no need to convert to floats)
	- can assume all programs will work (i.e. you won't pop a non-existent value)
	- you should initialize register to zero 

implict:
	- all commands in the input string are capitalized 
	- commands could be any length 

Algo
	- initialize register to 0 and stack to empty 
	- change all string representations of integers to integers 
	- write a series of if... then... conditional statements following the rules outlined above 

=end

def minilang(string)
	register = 0
	stack = []
	commands_and_ints = string.split
	commands_and_ints.map! do |el|
		el =~ /\d/ ? el.to_i : el 
	end 

	commands_and_ints.each do |el|
		case el 
		when "PUSH" then stack << register 
		when "ADD" then register += stack.pop
		when "SUB" then register -= stack.pop 
		when "MULT" then register *= stack.pop
		when "MOD" then register %= stack.pop 
		when "DIV" then register /= stack.pop 
		when "POP" then register = stack.pop 
		when "PRINT" then puts register 
		else register = el 
		end 
	end
end 
end 

 