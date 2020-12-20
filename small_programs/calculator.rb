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
	if operator.casecmp('add') == 0
		answer = num1.to_i + num2.to_i
		puts "#{num1} + #{num2} is #{answer}"
		break 
	elsif operator.casecmp('subtract') == 0
		answer = num1.to_i - num2.to_i
		puts "#{num1} - #{num2} is #{answer}"
		break 
	elsif operator.casecmp('multiply') == 0
		answer = num1.to_i * num2.to_i
		puts "#{num1} * #{num2} is #{answer}"
		break 
	elsif operator.casecmp('divide') == 0
		answer = num1.to_f / num2.to_f
		puts "#{num1} / #{num2} is #{answer}"
		break 
	else 
		puts "That's not a valid operator. Try again."
	end 
end 