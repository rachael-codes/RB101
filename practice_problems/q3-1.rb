=begin 

Date: 12/29/20

Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before 
computers had video screens).

For this practice problem, write a one-line program that creates the following output 10 times, 
with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

=end 

# Multi-line way 
count = 0
string = "The Flintstones Rock!" 

until count == 10
	puts string 
	string.prepend(" ")
	count += 1
end 

# Two-liner way 
string = "The Flintstones Rock!" 
10.times { puts string && string.prepend(" ") } 

# One-liner way
10.times { |num| puts (" " * num) + "The Flintstones Rock!" }

