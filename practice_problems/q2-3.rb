ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add these two to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)