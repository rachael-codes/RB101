# Date: 01/01/21
# RB101 Programming Foundations Lesson 4: Ruby Collections 
#       "Selection and Transformation" 

# How would you iterate over a hash to get this result?  
# {"apple"=>"Fruit", "pear"=>"Fruit"}

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruits(produce_list)
	produce_keys = produce_list.keys 
	counter = 0
	selected_fruits = {}

	loop do 
		break if counter == produce_keys.size 

		current_key = produce_keys[counter]
		current_value = produce_list[current_key]

		if current_value == 'Fruit'
			selected_fruits[current_key] = current_value 
		end 

		counter += 1 
	end

	selected_fruits 

end 

puts select_fruits(produce)