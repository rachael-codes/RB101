advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

# My way 
puts advice.split(" ").slice!(0..7).join(" ")

# LS way 
puts advice.slice!(0, advice.index('house'))