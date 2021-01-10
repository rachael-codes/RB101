# Program: Grade Book
# Date: 01/09/21

# Write a method that determines the mean (average) of the three scores passed to it, and returns 
# the letter value associated with that grade.

=begin
90 <= score <= 100 	'A'
80 <= score < 90 	'B'
70 <= score < 80 	'C'
60 <= score < 70 	'D'
0 <= score < 60 	'F'
=end

def get_grade(grade1, grade2, grade3)
	result  = (grade1 + grade2 + grade3) / 3 

	case result 
	when 90..100 then 'A'
	when 80..89  then 'B'
	when 70..79  then 'C'
	when 60..69  then 'D'
	else 							'F'
	end 
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"