# Better version of calculator application
# (My first version is called calculator.rb)
# 12/21/20 

LANGUAGE = 'en'

require 'yaml' 
MESSAGES = YAML.load_file('calculator_messages.yml')
# to see messages, use 'puts MESSAGES.inspect' 

def messages(message, lang='en')
	MESSAGES[lang][message]
end 

def prompt(message)
	Kernel.puts(" => #{message}")
end 

def valid_number?(input)
	input.to_i.to_s == input || input.to_f.to_s == input 
end 

def operation_to_message(operator)
	gerund = case operator 
	when '1'
		'Adding'
	when '2'
		'Subtracting'
	when '3'
		'Multiplying'
	when '4'
		'Dividing'
	end 

	gerund 
end 

prompt(messages('welcome'))

name = nil
loop do 
	name = gets.chomp

	if name.empty?
		prompt(messages('valid_name'))
	else
		break
	end 
end 

prompt("Hi #{name}!")

loop do #main loop
	num1 = nil 
	loop do
	 prompt(messages('first_number'))
	 num1 = Kernel.gets.chomp

	 if valid_number?(num1)
	 	break
	 else
	 	prompt(messages('invalid'))
	 end 
	end

	num2 = nil 
	loop do
		prompt(messages('second_number'))
		num2 = Kernel.gets.chomp

		if valid_number?(num2)
	 	break
	 else
	 	prompt(messages('invalid'))
	 end 
	end 

	operator_prompt = <<-MSG
		What operation would you like to perform?
		1) add 
		2) subtract 
		3) multiply 
		4) divide
	MSG
	
	prompt(operator_prompt)

	operator = nil 
	loop do 
		operator = Kernel.gets.chomp
		if %w(1 2 3 4).include?(operator)
			break
		else
			prompt(messages('choose_number'))
		end
	end 

	prompt("#{operation_to_message(operator)} the two numbers...")

	result = case operator
		 			when '1'
		 				num1.to_i + num2.to_i
		 			when '2' 
		 				num1.to_i - num2.to_i
		 			when '3'
		 				num1.to_i * num2.to_i
		 			when '4' 
		 				num1.to_f / num2.to_f
		end 


	 prompt("The result is #{result}.")
	 prompt(messages('again?'))
	 answer = gets.chomp
	 break unless answer.downcase.start_with?('y')
end

prompt(messages('thanks'))