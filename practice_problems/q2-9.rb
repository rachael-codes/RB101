# Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"

# My way (more than one line)
count = 0
count += 1 if /t/.match(statement)
puts count

# LS way
puts statement.count('t')