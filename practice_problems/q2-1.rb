# In this hash, see if Spot is present. 

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# 3 ways 
puts ages.include?('Spot')
puts ages.member?('Spot')
puts ages.key?('Spot')
