# Date: 12/29/20

# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# way 1  (convert to string)
puts "the value of 40 + 2 is " + (40 + 2).to_s

# way 2 (string iterpolation)
puts "the value of 40 + 2 is " + "#{40 + 2}"