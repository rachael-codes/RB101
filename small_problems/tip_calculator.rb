# Program: Tip Calculator
# Date: 12/24/20

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

=begin 
	What is the bill? 200
	What is the tip percentage? 15

	The tip is $30.0
	The total is $230.0
=end 

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f 

tip = tip_percentage / 100 * bill
total = bill + tip

puts "The tip is $#{format("%.2f", tip)}. The total is $#{format("%.2f", total)}."

