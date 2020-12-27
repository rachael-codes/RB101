# Program: What's my bonus?
# Date: 12/24/20

=begin	
Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.
=end

def calculate_bonus(salary, boolean)
	boolean ? (salary.to_i/2) : 0 
end 

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false) 