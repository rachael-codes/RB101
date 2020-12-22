=begin
	
Build a command line calculator program that does the following:
    asks for two numbers
    asks for the type of operation to perform: add, subtract, multiply or divide
    displays the result

=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num1 = nil
num2 = nil
operator = nil

puts "Welcome to Calculator!\n"

loop do 
	puts "Give me an integer: "
	num1 = gets.chomp
	break if valid_number?(num1) == true 
	puts "Invalid integer. Try again."
end 

loop do 
	puts "Give me another integer: "
	num2 = gets.chomp
	break if valid_number?(num2) == true 
	puts "Invalid integer. Try again."
end 

loop do 
	puts "What type of operation would you like to perform (add, subtract, multiply, or divide)?"
	operator = gets.chomp 

	result = case operator 
					when '1'
 						num1.to_i + num2.to_i
 						break 
 					when '2' 
 						num1.to_i - num2.to_i
 						break 
 					when '3'
 						num1.to_i * num2.to_i
 						break 
 					when '4' 
 						num1.to_f / num2.to_f
 						break
	end 
end 

puts "The result is #{result}."

