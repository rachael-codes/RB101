def xor(num1, num2)
	if num1 == true && num2 != true 
		true
	elsif num2 == true && num1 != true 
		true 
	else 
		false 
	end 
end 

def short_xor(num1, num2)
	(num1 && !num2) || (num2 && !num1) ? true : false
end 

puts xor(5.even?, 4.even?)
puts xor(5.odd?, 4.even?)

puts short_xor(5.even?, 4.even?)
puts short_xor(5.odd?, 4.even?)