# Starting with this string
munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):


#1 "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
string1 = ''
arr1 = munsters_description.upcase.split(" ")
arr1[0] = 'tHE'
arr1[1] = 'mUNSTERS'
arr1.each { |el| string1 << el + " " }

# easier way 
munsters_description.swapcase! 



#2 "The munsters are creepy in a good way."
string2 = ''
arr2 = munsters_description.split(" ")
arr2[1].downcase!
arr2.each { |el| string2 << el + " " }

# easier way
munsters_description.capitalize!



#3 "the munsters are creepy in a good way."
string3 = ''
arr3 = munsters_description.split(" ")
arr3[0].downcase!
arr3[1].downcase!
arr3.each { |el| string3 << el + " " }

# easier way 
munsters_description.downcase!



#4 "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
string4 = ''
arr4 = munsters_description.split(" ").each { |char| char.upcase! } 
arr4.each { |el| string4 << el + " " } 

# easier way
munsters_description.upcase!

