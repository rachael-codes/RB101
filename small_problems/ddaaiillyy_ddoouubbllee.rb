# Program: ddaaiillyy ddoouubbllee
# Date: 01/02/21

# Write a method that takes a string argument and returns a new string that contains the value of 
# the original string with all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

# My solution that changes the actual array
def crunch(string)
	char_array = string.split("")
	count = 0

	loop do 
		while char_array[count] == char_array[count+1]
			char_array.delete_at(count)
		end 
		count += 1
		break if count == char_array.size
	end 

	char_array.join("")
end 
