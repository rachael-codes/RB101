# Program: Swap Case
# Date: 01/06/21

# Write a method that takes a string as an argument and returns a new string in which 
# every uppercase letter is replaced by its lowercase version, and every lowercase 
# letter by its uppercase version. All other characters should be unchanged.

# TEST CASES
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# My solution
def swapcase(string)
	swapped_string = ''

	string.each_char do |char| 
		if char =~ /[A-Z]/ 
			swapped_string += char.downcase 
		elsif char =~ /[a-z]/ 
			swapped_string += char.upcase
		else 
			swapped_string += char
		end 
	end 

	swapped_string
end 

# Slightly more compact solution from LS 
def swapcase2(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end