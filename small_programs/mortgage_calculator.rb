# Simple Mortgage Calculator
# Rachael McBride
# Date: 12/23/20 

def prompt(message)
	puts(" => #{message}")
end 

def valid_integer?(input)
	input.to_i.to_s == input || input.to_i.to_s == input 
end 

def valid_float?(input)
	input.to_f.to_s == input || input.to_f.to_s == input 
end 

prompt("Welcome to the mortgage calculator!") 

loop do 
	total_loan = nil 
	loop do 
		prompt("What is the total amount of your mortgage loan?") 
		total_loan = gets.chomp
		break if valid_integer?(total_loan) && total_loan.to_i > 0 
		prompt ("That's not a valid amount. Try again.")
	end 

	apr = nil 
	loop do 
		prompt("What is your APR? Do not include the percentage sign. (Example: 3.21)") 
		apr = gets.chomp
		break if valid_float?(apr) && apr.to_f > 0 && apr.to_f < 25
		prompt ("That's not a valid APR. Try again.")
	end 

	loan_in_years = nil 
	loop do 
		prompt("What is the duration of your loan (in years)?")
		loan_in_years = gets.chomp
		break if valid_integer?(loan_in_years) && loan_in_years.to_i > 0
		prompt ("That not a valid number. Try again.")
	end 

	loan_in_months = loan_in_years.to_i * 12 
	monthly_interest_rate = apr.to_f / 100 / 12

	monthly_payment = total_loan.to_i * 
										(monthly_interest_rate / 
										(1 - (1 + monthly_interest_rate)**(-loan_in_months)))

	prompt("Your monthly payment is #{monthly_payment.truncate(2)}.")
	#{format('%.2f', monthly_payment)}

	prompt("Would you like to do another calculation?")
	answer = gets.chomp 

	break unless answer.downcase.start_with?('y')
end 

prompt("Thank you for using the mortgage calculator.")
