=begin 

Date: 12/28/20

Program: Convert a String to a Number!

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


# My own solution - ALGORITHM 
# -create A hash w/ k-v pairs that are string version of integers (keys) + integers (values)
# -initialize a result number to 0 (to be returned w/ our final number)
# -initialize a multplier variable that is 10 to the power of the size of the string minus one 

# -split our input string into chars and iterate over them 
#     -get the integer version (value) of its string version (key) from our hash 
#      -then multiply this by our multiplier variable 
#      -as iteration occurs, reassign the multiplier variable to itself divided by 10 (to get smaller each iteration)...
#       so first it multiplies the first num by 1000 then the next by 100 then 10 then 1 (for a num w/ 4 digits, for example)
#       example: 4 * 1000 = 4000; 3 * 100 = 300; 2 * 20 = 20; 1 * 1 = 1... total = 4321
# -return the placeholder number (result)

string_versions = ('0'..'9').to_a
integer_versions = (0..9).to_a
DIGITS = string_versions.zip(integer_versions).to_h

def string_to_integer(string)
  result = 0
  to_multiply_by = 10**(string.size-1) 

  string.chars.each do |char| 
    result += DIGITS[char] * to_multiply_by 
    to_multiply_by = to_multiply_by/10
  end 

  result 
end 

# TEST CASES
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('5') == 5 


