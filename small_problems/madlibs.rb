# Program: Madlibs
# Date: 01/08/21

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, 
# and an adjective and injects those into a story that you create.

# Example
=begin 
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end 

def madlibs()
	puts "Enter a noun: "
	noun = gets.chomp 
	puts "Enter a verb: "
	verb = gets.chomp
	puts "Enter an adjective: "
	adj = gets.chomp
	puts "Enter an adverb: "
	adv = gets.chomp

	puts "Do you #{verb} your #{adj} #{noun} #{adv}?"
end 