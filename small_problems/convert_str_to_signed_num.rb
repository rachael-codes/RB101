# Date: 12/29/20

=begin 

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
The String may have a leading + or - sign; if the first character is a +, your method should 
return a positive number; if it is a -, your method should return a negative number. 
If no sign is given, you should return a positive number.

Don't use the to_i method. 

=end 

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
							 '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

# My original solution 
def pos_or_neg_string_to_integer(string)
	if string.include?("-")
		negative_string = string.delete('-')
		-string_to_integer(negative_string)
	elsif string.include?("+")
		positive_string = string.delete('+') 
		string_to_integer(positive_string)
	else
		string_to_integer(string)
	end 
end

def string_to_integer(string)
	digits = string.chars.map { |char| DIGITS[char] }

	value = 0
	digits.each { |digit| value = 10 * value + digit }
	value
end 


# LS solution
def string_to_signed_integer2(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

def string_to_integer(string)
	digits = string.chars.map { |char| DIGITS[char] }

	value = 0
	digits.each { |digit| value = 10 * value + digit }
	value
end 


# My favorite solution (which seems condense yet still very clear)
def string_to_signed_integer(num)
  if num.start_with?('-')
    -string_to_integer(num[1..num.length-1])
  elsif num.start_with?('+')
    string_to_integer(num[1..num.length-1])
  else
    string_to_integer(num)
  end
end
