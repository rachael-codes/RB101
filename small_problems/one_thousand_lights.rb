# Program: 1000 Lights
# Date: 01/13/21

=begin 
You have a bank of switches before you, numbered from 1 to n. 
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. 
You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. 
On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

PEDAC 
input: total number of switches 
output: array that shows which lights are on after n repetitions 

							off off off off off 
# pass 1			on  on  on  on  on.     toggle all on
# pass 2.     on  off on  off on      toggle switches 2, 4, 6...
# pass 3      on  off off off on 			toggle switches 3, 6, 9...
# pass 4      on  off off on  on      toggle switches 4, 8, 12...
# pass 5      on  off off on  off     toggle switches 5, 10, 15...

ALGO
- populate an array with n number of switches which are all initially set to off 
- set count to 1; if index+1 % count == 0 then toggle the lights to on (all should be on)
- increment count; now if index+1 % count == 0 then toggle the lights to on (switch positions divisible by 2 should be toggled)
- increment count; now if index+1 % count == 0 then toggle the lights to on (switch positions divisible by 3 should be toggled)
- continue incrementing count until count is equal to number of switches + 1
-return arr 

=end 

# My solution 
def initialize_switch_arr(switches)
	arr = [] 
	switches.times { arr << "off" } 
	arr 
end 

def switch!(light)
	light == "on" ? "off" : "on"
end 

def change_lights!(n)
	count = 1
	arr = initialize_switch_arr(n)
	until count == n+1
		arr.map!.with_index do |num, idx| 
			idx = idx+1
			idx % count == 0 ? switch!(num) : num 
		end
		count += 1
	end 
	arr 
end 

def check_which_lights_are_on(n)
	result = []
	lights_arr = change_lights!(n)
	lights_arr.each_with_index { |el, idx| result << idx+1 if el == "on" } 
	result
end 
	
# TEST CASE
p check_which_lights_are_on(1000)
# [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 
#  361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

# Launch School's solution
# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end
