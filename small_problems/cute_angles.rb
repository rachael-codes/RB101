# Program: Cute Angles
# Date: 01/03/21

# Write a method that takes a floating point number that represents an angle between 0 and 360 
# degrees and returns a String that represents that angle in degrees, minutes and seconds. 
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, 
# and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# My solution 
DEGREE = "\xC2\xB0"

def dms(degrees_float)
  total_seconds = (degrees_float * 3600).round
  minutes_to_convert, seconds = total_seconds.divmod(60)
  degrees, minutes = minutes_to_convert.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


# LS solution (better because of constants)
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


# TEST CASES
p dms(30) # == %(30°00'00") 
p dms(76.73) # == %(76°43'48") 
p dms(254.6) # == %(254°36'00")
p dms(93.034773) # == %(93°02'05")
p dms(0) # == %(0°00'00")
p dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")


