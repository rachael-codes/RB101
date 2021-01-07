# 01/02/21
# Program: Alphabetical Numbers 

# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those 
# Integers sorted based on the English words for each number:
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, 
# fifteen, sixteen, seventeen, eighteen, nineteen

# One good solution
NUMBER_NAMES = {0=>'zero', 1=>'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen',}

def alphabetic_number_sort(num_arr)
  num_arr.sort { |a, b| NUMBER_NAMES.fetch(a) <=> NUMBER_NAMES.fetch(b) }
end

puts alphabetic_number_sort(0..19)


# LS solution
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort2(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end