# Write a program that will ask a user for an input of a word or 
# multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

def count_characters
	puts "Enter a word or multiple words: "
	words = gets.chomp
	chars = words.split(" ").join("").length
	puts "The number of characters in '#{words}' is #{chars}."
end 

count_characters