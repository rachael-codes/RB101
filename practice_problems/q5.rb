# Programmatically determine if 42 lies between 10 and 100.

# My solution
(10..100).include?(42)

# LS solution 
(10..100).cover?(42)

# From Ruby Docs: Cover? returns true if object is between the begin and end of a range. 
# https://docs.ruby-lang.org/en/2.7.0/Range.html#method-i-cover-3F