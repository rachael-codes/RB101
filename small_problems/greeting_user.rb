# Program: Greeting a user
# Date: 12/24/20

# Write a program that will ask for user's name. 
# The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

def scream_greet
	puts "What is your name?"
	name = gets.chomp

	if name.end_with?('!')
		puts "HELLO #{name.upcase} WHY ARE WE SCREAMING?"
	else
		puts "Hello #{name}."
	end 
end 

scream_greet