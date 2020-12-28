# Starting with the string:
# famous_words = "seven years ago..."
# show different ways to put the expected "Four score and " in front of it.

famous_words = "seven years ago..." 

# Four options 
famous_words.prepend("Four score and ")

famous_words.insert(0, "Four score and ")

"Four score and " << famous_words

"Four score and " + famous_words 
