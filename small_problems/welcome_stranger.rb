# Program: Welcome Stranger
# Date: 01/09/21

# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more 
# elements that, when combined with adjoining spaces, will produce a person's name. The hash will 
# contain two keys, :title and :occupation, and the appropriate values. Your method should return 
# a greeting that uses the person's full name, and mentions the person's title and occupation.

=begin 
PEDAC

input: arr, hash 
output: greeting 
=end 

def greetings(arr, hsh)
  full_name = arr.join(' ')
  job = hsh.values.join(' ')
  ("Hello, #{full_name}! Nice to have a #{job} around.")
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })