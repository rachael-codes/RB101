# Watch Others Code: Video 4
# https://launchschool.com/blog/watch-others-code-recording-part-4

# Program: Friday the 13th?
# Date: 01/12/21

# Program: Write a method that returns the number of Friday the 13ths in a year passed in as an argument.

require 'date'

def friday_13th?(year)
	friday_13th_count = 0
	month = 1
	
	12.times do 
		if Date.new(year, month, 13).friday?
			friday_13th_count += 1
		end 
		month += 1
	end 
	friday_13th_count
end 

p friday_13th?(2002)