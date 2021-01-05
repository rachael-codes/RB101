# Date: 01/02/21
# Program: Bannerizer
# Write a method that will take a short line of text, and print it within a box.

# EXAMPLE
=begin
	
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
	
=end

def print_in_box(string)
	banner_top_and_bottom = "+-" + "-"*string.size + "-+"
	banner_empty_line = "| " + " "*string.size + " |"

	puts banner_top_and_bottom
	puts banner_empty_line
	puts "| " + string + " |"
	puts banner_empty_line
	puts banner_top_and_bottom
end 

print_in_box("To boldly go where no one has gone before")
print_in_box("")