# Program: After Midnight (Part 1)
# Date: 12/30/20

=begin 

The time of day can be represented as the number of minutes before or after midnight. If the 
number of minutes is positive, the time is after midnight. If the number of minutes is negative, 
the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 
24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

=end 

# My solution 
def time_of_day(integer)
	if integer.positive? 
		if integer.divmod(60)[0] < 24 
			hours = integer.divmod(60)[0]
			minutes = integer.divmod(60)[1]
		else 
			hours = (integer.divmod(60)[0]).divmod(24)[1]
			minutes = integer.divmod(60)[1]
	
		end 

	else # negative 
		if integer.divmod(60)[0] < 24 
			hours = (integer.divmod(60)[0]).divmod(24)[1]
		else 
			hours = integer.divmod(60)[0] + 24
		end 
		minutes = integer.divmod(60)[1]
	end 
	format('%02d:%02d', hours, minutes)
end 

# LS Solution
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end