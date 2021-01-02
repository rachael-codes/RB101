# Program: After Midnight (Part 2)
# Date: 01/02/21

=begin

As seen in the previous exercise, the time of day can be represented as the number of minutes 
before or after midnight. If the number of minutes is positive, the time is after midnight. 

If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of 
minutes before and after midnight, respectively. Both methods should return a value in the range 
0..1439. You may not use ruby's Date and Time methods.

=end 


# My solution
def after_midnight(string)
	hours, minutes = string.split(':').map(&:to_i)
	return 0 if hours == 24 
	hours * 60 + minutes
end

def before_midnight(string)
	total_minutes = 0

	hours = 23 - string[0..1].to_i 
	minutes = 60 - string[3..4].to_i

	total_minutes += (hours * 60) if string[0..1].to_i != 24 && string[0..1].to_i != 0
	total_minutes += minutes if string[3..4].to_i != 0

	total_minutes
end 


# LS solution
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight2(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight2(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


# TEST CASES
p after_midnight('00:00') # == 0
p before_midnight('00:00') # == 0 
p after_midnight('12:34') # == 754
p before_midnight('12:34') # == 686
p after_midnight('24:00') # == 0
p before_midnight('24:00') # == 0

