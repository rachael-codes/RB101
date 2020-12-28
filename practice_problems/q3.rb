# Replace the word "important" with "urgent" in this string.

# My way
advice = "Few things in life are as important as house training your pet dinosaur."

words = advice.split(" ")
words[6] = 'urgent'
words = words.join(" ")

puts words 

# Better way
advice.gsub!('important', 'urgent')