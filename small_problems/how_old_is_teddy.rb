# Program: How old is Teddy?
# Date: 12/24/20

# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# Example output: Teddy is 69 years old!

def print_teddy_age
	teddy_age = rand(20..200)
	puts "Teddy is #{teddy_age} years old!"
end 

print_teddy_age