=begin 

Program: What century is that?
Date: 12/28/20

Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

=end 

# Launch School solution 
def what_century(year)
	century = year / 100 + 1 
	century -= 1 if year % 100 == 0
	century.to_s + century_suffix(century)
end 

def century_suffix(century)
	return 'th' if [11, 12, 13].include?(century % 100)
	last_digit = century % 10

	case last_digit 
	when 1 then 'st'
	when 2 then 'nd'
	when 3 then 'rd'
	else 'th'
	end 
end 

# My own solution from 2/27/21
# Algo
# -convert digits into a string 
# find last index to slice at (year.size - 3)
# slice array of digits from 0 to slice number + convert to integer again
# add one to the target number to get the century unless last number in century is zero
# (since 2000 is technically still part of the 20th century, for example)
# pass in century to a helper method to determine the suffix; return 

def century(year)
  year = year.to_s
  last_idx_to_slice = year.size - 3 

  century = (year[0..last_idx_to_slice]).to_i 
 	century += 1 unless year[-1] == '0' #because 2001 is the 21st century, so you need to add 1 to 20
 	
  add_suffix(century) 
end 

def add_suffix(num)
  num = num.to_s    
  if num[-1] == '1' && num[-2] != '1'
    num + 'st'
  elsif num[-1] == '2' && num[-2] != '1'
    num + 'nd'
  elsif num[-1] == '3' && num[-2] != '1'        
    num + 'rd'
  else 
    num + 'th'
  end 
end 

# TEST CASES
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'


