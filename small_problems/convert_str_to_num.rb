=begin 

Date: 12/28/20

The String#to_i method converts a string of numeric characters (including an optional 
plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) 
behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

EXAMPLES
string_to_integer('4321') == 4321
string_to_integer('570') == 570

=end 

# LS way 
DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
							 '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(string)
	digits = string.chars.map { |char| DIGITS[char] }

	value = 0
	digits.each { |digit| value = 10 * value + digit }
	value
end 

puts string_to_integer('4321')


# ASCII way
def string_to_integer(str)
  result = 0
  places = str.length - 1

  str.chars.each do |char|
    digit = (char.ord - 48) * 10**places
    places -= 1
    result += digit
  end
  result
end