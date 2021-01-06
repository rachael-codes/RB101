# Program: Lettercase Counter
# Date: 01/06/21

# Write a method that takes a string, and then returns a hash that contains 3 entries: 
# 	- one represents the number of characters in the string that are lowercase letters
# 	- one the number of characters that are uppercase letters
# 	- one the number of characters that are neither

# TEST CASES
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin 
PEDAC 
input: string
output: hash w/ 3 key-pair values

Algo
- create hash 
- create lowercase counter, uppercase counter, and neither counter within hash (set to 0)
- iterate over string and add to counters depending on #s of items
- once iteration is finished, add the counters to the hash as values 
=end 

# My solution
def letter_case_count(string)
	count_hash = { lowercase: 0, uppercase: 0, neither: 0 } 

	string.chars do |char|
		if char =~ /[A-Z]/
			count_hash[:uppercase] += 1
		elsif char =~ /[a-z]/
			count_hash[:lowercase] += 1
		else
			count_hash[:neither] += 1 
		end 
	end 

	count_hash
end 

# LS solution
UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

# LS solution 2 
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
