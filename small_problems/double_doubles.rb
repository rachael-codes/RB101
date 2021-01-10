# Program: Double Doubles
# Date: 01/09/21 

# Solution 
def twice(num)
	mid = num.to_s.size / 2 - 1
	num = num.to_s

	if num.size > 1 && num[0..mid] == num[mid+1..num.size-1]
		num.to_i
	else 
		num.to_i * 2
	end
end 

# Condensed solution
def twice(num)
	mid = num.to_s.size / 2 - 1
	num = num.to_s
	num.size.even? && num[0..mid] == num[mid+1..num.size-1] ? num.to_i : num.to_i * 2
end